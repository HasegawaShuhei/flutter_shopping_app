import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/product_search_field.dart';
import '../product_list_screen_controller.dart';

class ProductListAppBar extends HookConsumerWidget {
  const ProductListAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () async => ref
            .read(productListScreenControllerProvider)
            .onTapSearchBar(context: context),
        child: const ProductSearchField(enabled: false),
      ),
    );
  }
}
