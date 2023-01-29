import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../repositories/product_repositories.dart';
import 'paginated_products_state.dart';

final paginatedProductsNotifierProvider = AsyncNotifierProvider.autoDispose<
    PaginatedProductsNotifier, PaginatedProductsState>(
  PaginatedProductsNotifier.new,
  name: 'paginatedProductsNotifierProvider',
);

class PaginatedProductsNotifier
    extends AutoDisposeAsyncNotifier<PaginatedProductsState> {
  ProductRepository get _repository => ref.read(productRepositoryProvider);

  @override
  Future<PaginatedProductsState> build() async {
    return _init();
  }

  Future<PaginatedProductsState> _init() async {
    final paginatedProducts = await _repository.fetchPaginatedProducts();

    final state = PaginatedProductsState(
      paginatedProducts: paginatedProducts,
      hasNext: paginatedProducts.hasNext,
      isFetching: false,
    );

    /// autodisposeさせないようにキャッシュする
    ref.keepAlive();
    return state;
  }

  Future<void> loadMore() async {
    /// stateがnull、もしくはエラーが発生している場合は処理を行わない
    if (state.valueOrNull == null || state.hasError) return;

    final value = state.value!;

    /// これ以上ロードするものがなければ処理を行わない
    if (!value.hasNext) return;

    /// fetch中の場合は処理を行わない
    if (value.isFetching) return;

    /// fetch中に変更する
    state = AsyncData(value.copyWith(isFetching: true));

    try {
      /// 現在stateに保持しているpaginatedProducts
      final paginatedProducts = value.paginatedProducts!;

      /// 新しく取得したpaginatedProducts
      final nextPaginatedProducts = await _repository.fetchPaginatedProducts(
        limit: paginatedProducts.nextLimit,
        offset: paginatedProducts.nextOffset,
      );

      /// 現在保持しているproductsに新しく取得したものを追加
      final mergedPaginatedProducts = paginatedProducts.copyWith(
        products: [
          ...paginatedProducts.products,
          ...nextPaginatedProducts.products,
        ],
      );

      /// stateの更新
      state = AsyncData(
        value.copyWith(
          paginatedProducts: mergedPaginatedProducts,
          hasNext: mergedPaginatedProducts.hasNext,
          isFetching: false,
        ),
      );
    } on Exception catch (e, st) {
      /// メモ: asyncErrorは初回以外でもwhenのerror画面が表示される
      state = AsyncError<PaginatedProductsState>(e, st);

      /// isFetchingをfalseにしておく
      state = AsyncData(state.value!.copyWith(isFetching: false));
    }
  }
}
