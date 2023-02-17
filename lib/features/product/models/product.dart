import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String title,
    String? description,
    required int price,
    required double discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    @JsonKey(name: 'thumbnail') String? thumbnailUrl,
    @JsonKey(name: 'images') List<String>? imageUrls,
  }) = _Product;

  const Product._();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  String get priceForDisplay => '\$$price';
}
