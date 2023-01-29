import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String title,
    required String description,
    required int price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required String brand,
    @JsonKey(name: 'thumbnail') required String thumbnailUrl,
    @JsonKey(name: 'images') required List<String> imageUrls,
  }) = _Product;

  const Product._();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  String get priceForDisplay => '\$$price';
}
