// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginationState<T> {
  PaginationResponse<T>? get paginationResponse =>
      throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationStateCopyWith<T, PaginationState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationStateCopyWith<T, $Res> {
  factory $PaginationStateCopyWith(
          PaginationState<T> value, $Res Function(PaginationState<T>) then) =
      _$PaginationStateCopyWithImpl<T, $Res, PaginationState<T>>;
  @useResult
  $Res call(
      {PaginationResponse<T>? paginationResponse,
      bool hasNext,
      bool isFetching});

  $PaginationResponseCopyWith<T, $Res>? get paginationResponse;
}

/// @nodoc
class _$PaginationStateCopyWithImpl<T, $Res, $Val extends PaginationState<T>>
    implements $PaginationStateCopyWith<T, $Res> {
  _$PaginationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationResponse = freezed,
    Object? hasNext = null,
    Object? isFetching = null,
  }) {
    return _then(_value.copyWith(
      paginationResponse: freezed == paginationResponse
          ? _value.paginationResponse
          : paginationResponse // ignore: cast_nullable_to_non_nullable
              as PaginationResponse<T>?,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationResponseCopyWith<T, $Res>? get paginationResponse {
    if (_value.paginationResponse == null) {
      return null;
    }

    return $PaginationResponseCopyWith<T, $Res>(_value.paginationResponse!,
        (value) {
      return _then(_value.copyWith(paginationResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaginationStateCopyWith<T, $Res>
    implements $PaginationStateCopyWith<T, $Res> {
  factory _$$_PaginationStateCopyWith(_$_PaginationState<T> value,
          $Res Function(_$_PaginationState<T>) then) =
      __$$_PaginationStateCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {PaginationResponse<T>? paginationResponse,
      bool hasNext,
      bool isFetching});

  @override
  $PaginationResponseCopyWith<T, $Res>? get paginationResponse;
}

/// @nodoc
class __$$_PaginationStateCopyWithImpl<T, $Res>
    extends _$PaginationStateCopyWithImpl<T, $Res, _$_PaginationState<T>>
    implements _$$_PaginationStateCopyWith<T, $Res> {
  __$$_PaginationStateCopyWithImpl(
      _$_PaginationState<T> _value, $Res Function(_$_PaginationState<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationResponse = freezed,
    Object? hasNext = null,
    Object? isFetching = null,
  }) {
    return _then(_$_PaginationState<T>(
      paginationResponse: freezed == paginationResponse
          ? _value.paginationResponse
          : paginationResponse // ignore: cast_nullable_to_non_nullable
              as PaginationResponse<T>?,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PaginationState<T> extends _PaginationState<T> {
  _$_PaginationState(
      {this.paginationResponse, this.hasNext = true, this.isFetching = false})
      : super._();

  @override
  final PaginationResponse<T>? paginationResponse;
  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final bool isFetching;

  @override
  String toString() {
    return 'PaginationState<$T>(paginationResponse: $paginationResponse, hasNext: $hasNext, isFetching: $isFetching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationState<T> &&
            (identical(other.paginationResponse, paginationResponse) ||
                other.paginationResponse == paginationResponse) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paginationResponse, hasNext, isFetching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationStateCopyWith<T, _$_PaginationState<T>> get copyWith =>
      __$$_PaginationStateCopyWithImpl<T, _$_PaginationState<T>>(
          this, _$identity);
}

abstract class _PaginationState<T> extends PaginationState<T> {
  factory _PaginationState(
      {final PaginationResponse<T>? paginationResponse,
      final bool hasNext,
      final bool isFetching}) = _$_PaginationState<T>;
  _PaginationState._() : super._();

  @override
  PaginationResponse<T>? get paginationResponse;
  @override
  bool get hasNext;
  @override
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationStateCopyWith<T, _$_PaginationState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
