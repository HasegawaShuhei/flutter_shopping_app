import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routing/app_router.dart';
import '../../components/product_search_field.dart';

class ProductListAppBar extends StatelessWidget {
  const ProductListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: GestureDetector(
        behavior: HitTestBehavior.deferToChild,
        onTap: () => context.router.push(const ProductSearchRoute()),
        child: const ProductSearchField(enabled: false),
      ),
    );
  }
}
