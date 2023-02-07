// ignore_for_file: implicit_dynamic_list_literal
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_response.freezed.dart';

const _limitPerFetch = 10;
const _offsetPerFecth = 10;

@Freezed(genericArgumentFactories: true)
class PaginationResponse<T> with _$PaginationResponse<T> {
  const factory PaginationResponse({
    @Default([]) List<T> results,
    @Default(0) int total,
    @Default(0) int limit,
    @Default(0) int offset,
  }) = _PaginationResponse<T>;

  const PaginationResponse._();

  factory PaginationResponse.fromResponse(
    List<T> results,
    Map<String, dynamic> json,
  ) =>
      PaginationResponse(
        results: results,
        total: json['total'] as int,
        limit: json['limit'] as int,
        offset: json['skip'] as int,
      );

  bool get hasNext => results.length < total;
  int get nextLimit => total - results.length >= _limitPerFetch
      ? _limitPerFetch
      : total - results.length;
  int get nextOffset => offset + _offsetPerFecth;
}
