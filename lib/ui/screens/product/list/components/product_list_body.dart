import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../product_list_screen_controller.dart';
import 'product_list.dart';
import 'product_list_app_bar.dart';

class ProductListBody extends HookConsumerWidget {
  const ProductListBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController =
        ref.watch(productListScreenControllerProvider).scrollController;
    return SafeArea(
      child: CustomScrollView(
        controller: scrollController,
        slivers: const [
          ProductListAppBar(),
          ProductList(),
        ],
      ),
    );
  }
}
