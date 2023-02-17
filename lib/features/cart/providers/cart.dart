import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/cart.dart';
import '../repositories/cart_repository.dart';

final cartProvider = FutureProvider.autoDispose<Cart>(
  (ref) async => ref.read(cartRepositoryProvider).fetchCarts(),
  name: 'cartsProvider',
);
