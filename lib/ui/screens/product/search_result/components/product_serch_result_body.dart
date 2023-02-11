import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../product_search_result_screen_controller.dart';
import 'product_search_result_list.dart';
import 'product_serch_result_app_bar.dart';
import 'product_serch_result_number.dart';

class ProductSeachResultBody extends HookConsumerWidget {
  const ProductSeachResultBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController =
        ref.watch(productSearchResultScreenControllerProvider).scrollController;
    return SafeArea(
      child: CustomScrollView(
        controller: scrollController,
        slivers: const [
          ProductSearchResultAppBar(),
          ProductSearchResultNumber(),
          ProductSearchResultList(),
        ],
      ),
    );
  }
}
