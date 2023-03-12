import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/extensions/ref_extension.dart';
import '../../../core/interfaces/pagination_async_notifier_interface.dart';
import '../../../core/models/pagination_response.dart';
import '../../../core/models/pagination_state.dart';
import '../models/product.dart';
import '../repositories/product_repositories.dart';

final productsNotifierProvider = AsyncNotifierProvider.autoDispose<
    ProductsNotifier, PaginationState<Product>>(
  ProductsNotifier.new,
  name: 'productsNotifierProvider',
);

class ProductsNotifier extends PaginationAsyncNotifierInterface<Product> {
  @override
  Future<PaginationResponse<Product>> fetch({
    int limit = 10,
    int offset = 0,
  }) async {
    /// 参考[https://zenn.dev/riscait/books/flutter-riverpod-practical-introduction/viewer/tips#dio%E3%82%92%E5%88%A9%E7%94%A8%E3%81%97%E3%81%9Fapi%E9%80%9A%E4%BF%A1%E6%99%82%E3%80%81%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88%E3%81%8C%E4%B8%8D%E8%A6%81%E3%81%AB%E3%81%AA%E3%81%A3%E3%81%9F%E5%A0%B4%E5%90%88%E3%81%AB%E3%82%AD%E3%83%A3%E3%83%B3%E3%82%BB%E3%83%AB%E3%81%95%E3%81%9B%E3%81%9F%E3%81%84]
    /// ネットワークリクエストが不要になった場合にキャンセルする
    final cancelToken = ref.cancelToken();

    /// パラメータが急速に複数回変化するようなネットワークリクエストで多重送信を防ぐ
    await ref.debounce();
    return ref.read(productRepositoryProvider).fetchProducts(
          limit: limit,
          offset: offset,
          cancelToken: cancelToken,
        );
  }
}
