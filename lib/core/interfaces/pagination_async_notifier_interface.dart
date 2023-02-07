import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/models/pagination_response.dart';
import '../../../core/models/pagination_state.dart';

abstract class PaginationAsyncNotifierInterface<T>
    extends AutoDisposeAsyncNotifier<PaginationState<T>> {
  @override
  FutureOr<PaginationState<T>> build() {
    return _init();
  }

  /// 次のoffsetからlimit(10)件取得する
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
      final paginationResponse = value.paginationResponse!;

      /// 新しく取得したpaginatedProducts
      final nextPaginationResponse = await fetch(
        limit: paginationResponse.nextLimit,
        offset: paginationResponse.nextOffset,
      );

      /// 現在保持しているproductsに新しく取得したものを追加
      final mergedPaginationResponse = paginationResponse.copyWith(
        results: [
          ...paginationResponse.results,
          ...nextPaginationResponse.results,
        ],
      );

      /// stateの更新
      state = AsyncData(
        value.copyWith(
          paginationResponse: mergedPaginationResponse,
          hasNext: mergedPaginationResponse.hasNext,
          isFetching: false,
        ),
      );
    } on Exception catch (e, st) {
      /// メモ: asyncErrorは初回以外でもwhenのerror画面が表示される
      state = AsyncError<PaginationState<T>>(e, st);

      /// isFetchingをfalseにしておく
      state = AsyncData(state.value!.copyWith(isFetching: false));
    }
  }

  /// Tの取得処理 override必須
  Future<PaginationResponse<T>> fetch({
    int limit = 10,
    int offset = 0,
  });

  /// Notifierのbuild関数内で使う初期化処理
  Future<PaginationState<T>> _init() async {
    final paginationResponse = await fetch();

    final state = PaginationState<T>(
      paginationResponse: paginationResponse,
      hasNext: paginationResponse.hasNext,
      isFetching: false,
    );

    /// autodisposeさせないようにキャッシュする
    ref.keepAlive();
    return state;
  }
}
