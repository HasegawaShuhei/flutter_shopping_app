import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/interfaces/pagination_async_notifier_interface.dart';
import '../../../../core/models/pagination_state.dart';
import '../../../../features/product/models/product.dart';
import '../../../components/pagination_list_view.dart';
import 'product_list_item.dart';

class ProductList extends HookConsumerWidget {
  const ProductList({super.key, required this.provider});

  final AutoDisposeAsyncNotifierProvider<
      PaginationAsyncNotifierInterface<Product>,
      PaginationState<Product>> provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PaginationListView(
      provider: provider,
      listItem: (data) => ProductListItem(product: data),
    );
  }
}
