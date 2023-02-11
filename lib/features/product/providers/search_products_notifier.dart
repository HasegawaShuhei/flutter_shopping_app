import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/interfaces/pagination_async_notifier_interface.dart';
import '../../../core/models/pagination_response.dart';
import '../../../core/models/pagination_state.dart';
import '../models/product.dart';
import '../repositories/product_repositories.dart';
import 'search_product_query.dart';

final searchProductsNotifierProvider = AsyncNotifierProvider.autoDispose<
    SearchProductsNotifier, PaginationState<Product>>(
  SearchProductsNotifier.new,
  name: 'searchProductsNotifierProvider',
);

class SearchProductsNotifier extends PaginationAsyncNotifierInterface<Product> {
  @override
  Future<PaginationResponse<Product>> fetch({
    int limit = 10,
    int offset = 0,
  }) async {
    final query = ref.read(searchProductQueryProvider);
    return ref.read(productRepositoryProvider).searchProducts(
          query: query,
          limit: limit,
          offset: offset,
        );
  }
}
