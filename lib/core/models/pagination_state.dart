import 'package:freezed_annotation/freezed_annotation.dart';

import 'pagination_response.dart';

part 'pagination_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
@freezed
class PaginationState<T> with _$PaginationState<T> {
  factory PaginationState({
    PaginationResponse<T>? paginationResponse,
    @Default(true) bool hasNext,
    @Default(false) bool isFetching,
  }) = _PaginationState;

  const PaginationState._();

  List<T> get results => paginationResponse?.results ?? [];
}
