import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/routing/app_router.dart';
import '../../components/product_search_field.dart';
import '../product_search_result_screen_controller.dart';

class ProductSearchResultAppBar extends HookConsumerWidget {
  const ProductSearchResultAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref
        .watch(productSearchResultScreenControllerProvider)
        .searchQueryController;
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => context.router.push(const ProductSearchRoute()),
        child: ProductSearchField(
          controller: controller,
          enabled: false,
        ),
      ),
    );
  }
}
