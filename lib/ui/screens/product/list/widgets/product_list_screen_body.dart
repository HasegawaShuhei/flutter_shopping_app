import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../product_list_screen_controller.dart';
import 'product_list.dart';

class ProductListScreenBody extends HookConsumerWidget {
  const ProductListScreenBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController =
        ref.watch(productListScreenControllerProvider).scrollController;
    return SafeArea(
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
            toolbarHeight: 20,
            actions: [
              InkWell(
                onTap: () {},
                child: const Icon(Icons.search),
              ),
              const Gap(8),
            ],
          ),
          const ProductList(),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
