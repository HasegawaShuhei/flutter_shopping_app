import 'package:flutter/material.dart';

import '../../../../../features/product/providers/search_products_notifier.dart';
import '../../components/pagination_product_list.dart';

class ProductSearchResultList extends StatelessWidget {
  const ProductSearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(4),
      sliver: PaginationProductList(provider: searchProductsNotifierProvider),
    );
  }
}
