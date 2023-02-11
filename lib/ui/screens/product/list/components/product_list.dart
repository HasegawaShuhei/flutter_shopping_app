import 'package:flutter/material.dart';

import '../../../../../features/product/providers/products_notifier.dart';
import '../../components/pagination_product_list.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(4),
      sliver: PaginationProductList(provider: productsNotifierProvider),
    );
  }
}
