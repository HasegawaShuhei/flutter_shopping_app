import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/number.dart';
import '../../components/product_search_field.dart';
import '../product_search_screen_controller.dart';

class ProductSearchAppBar extends HookConsumerWidget
    implements PreferredSizeWidget {
  const ProductSearchAppBar({super.key});
  @override
  Size get preferredSize => appBarSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.watch(productSearchScreenControllerProvider).searchQueryController;
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Row(
        children: [
          Expanded(
            child: ProductSearchField(
              controller: controller,
              autofocus: true,
              onClear: () => ref
                  .read(productSearchScreenControllerProvider)
                  .clearController(),
              onSubmitted: () async => ref
                  .read(productSearchScreenControllerProvider)
                  .onSearch(context: context),
            ),
          ),
          TextButton(
            onPressed: () => context.router.pop(),
            child: const Text('cancel'),
          ),
        ],
      ),
    );
  }
}
