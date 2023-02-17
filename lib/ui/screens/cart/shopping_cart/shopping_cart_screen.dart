import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../features/cart/providers/cart.dart';

class ShoppingCartScreen extends HookConsumerWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCarts = ref.watch(cartProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: asyncCarts.when(
          data: (data) => Text(data.products.length.toString()),
          error: (e, st) => const SizedBox.shrink(),
          loading: () => const SizedBox.shrink(),
        ),
      ),
    );
  }
}
