import 'package:freezed_annotation/freezed_annotation.dart';

import '../../product/models/product.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  factory Cart({
    required int id,
    @Default(<Product>[]) List<Product> products,
    required int total,
    required int discountedTotal,
    required int totalProducts,
    required int totalQuantity,
  }) = _Cart;

  const Cart._();

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}
