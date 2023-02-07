import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../features/product/providers/products_notifier.dart';
import '../../../../components/pagination_list_view.dart';
import 'product_list_item.dart';

class ProductList extends HookConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PaginationListView(
      provider: productsNotifierProvider,
      listItem: (data) => ProductListItem(product: data),
    );
  }
}
