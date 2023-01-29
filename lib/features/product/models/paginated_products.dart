import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/number.dart';
import 'product.dart';

part 'paginated_products.freezed.dart';
part 'paginated_products.g.dart';

@freezed
class PaginatedProducts with _$PaginatedProducts {
  const factory PaginatedProducts({
    @Default(<Product>[]) List<Product> products,
    @Default(0) int total,
    @Default(0) int limit,
    @JsonKey(name: 'skip') @Default(0) int offset,
  }) = _PaginatedProducts;

  const PaginatedProducts._();

  factory PaginatedProducts.fromJson(Map<String, dynamic> json) =>
      _$PaginatedProductsFromJson(json);

  bool get hasNext => products.length < total;
  int get nextLimit => total - products.length >= productsLimit
      ? productsLimit
      : total - products.length;
  int get nextOffset => offset + productsOffset;
}
