import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/routing/app_router.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product list'),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Product list'),
            const Gap(8),
            ElevatedButton(
              onPressed: () {
                context.router.push(const ProductDetailRoute());
              },
              child: const Text('Go to product detail'),
            ),
          ],
        ),
      ),
    );
  }
}
