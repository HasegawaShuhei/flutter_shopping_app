import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/paginated_products.dart';
import '../models/product.dart';

part 'paginated_products_state.freezed.dart';

@freezed
class PaginatedProductsState with _$PaginatedProductsState {
  factory PaginatedProductsState({
    PaginatedProducts? paginatedProducts,
    @Default(true) bool hasNext,
    @Default(false) bool isFetching,
  }) = _PaginatedProductsState;

  const PaginatedProductsState._();

  List<Product> get products => paginatedProducts?.products ?? [];
}
