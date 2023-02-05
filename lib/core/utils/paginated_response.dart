// ignore_for_file: implicit_dynamic_list_literal
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response.freezed.dart';

const _limit = 10;
const _offset = 10;

@Freezed(genericArgumentFactories: true)
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  const factory PaginatedResponse({
    @Default([]) List<T> results,
    @Default(0) int total,
    @Default(0) int limit,
    @Default(0) int offset,
  }) = _PaginatedResponse<T>;

  const PaginatedResponse._();

  factory PaginatedResponse.fromResponse(
    List<T> results,
    Map<String, dynamic> json,
  ) =>
      PaginatedResponse(
        results: results,
        total: json['total'] as int,
        limit: json['limit'] as int,
        offset: json['skip'] as int,
      );

  bool get hasNext => results.length < total;
  int get nextLimit =>
      total - results.length >= _limit ? _limit : total - results.length;
  int get nextOffset => offset + _offset;
}
