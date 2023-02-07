import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    return ref.read(productRepositoryProvider).fetchProducts(
          limit: limit,
          offset: offset,
        );
  }
}
