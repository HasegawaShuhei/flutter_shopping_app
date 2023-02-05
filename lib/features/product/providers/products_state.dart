import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/paginated_response.dart';
import '../models/product.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  factory ProductsState({
    PaginatedResponse<Product>? paginatedProducts,
    @Default(true) bool hasNext,
    @Default(false) bool isFetching,
  }) = _ProductsState;

  const ProductsState._();

  List<Product> get products => paginatedProducts?.results ?? [];
}
