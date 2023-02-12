import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/product_search_field.dart';
import '../../components/product_sliver_app_bar.dart';
import '../product_list_screen_controller.dart';

class ProductListAppBar extends HookConsumerWidget {
  const ProductListAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProductSliverAppBar(
      onTap: () async => ref
          .read(productListScreenControllerProvider)
          .onTapSearchBar(context: context),
      child: const ProductSearchField(enabled: false),
    );
  }
}
