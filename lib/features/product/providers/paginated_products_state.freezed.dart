// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedProductsState {
  PaginatedProducts? get paginatedProducts =>
      throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedProductsStateCopyWith<PaginatedProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedProductsStateCopyWith<$Res> {
  factory $PaginatedProductsStateCopyWith(PaginatedProductsState value,
          $Res Function(PaginatedProductsState) then) =
      _$PaginatedProductsStateCopyWithImpl<$Res, PaginatedProductsState>;
  @useResult
  $Res call(
      {PaginatedProducts? paginatedProducts, bool hasNext, bool isFetching});

  $PaginatedProductsCopyWith<$Res>? get paginatedProducts;
}

/// @nodoc
class _$PaginatedProductsStateCopyWithImpl<$Res,
        $Val extends PaginatedProductsState>
    implements $PaginatedProductsStateCopyWith<$Res> {
  _$PaginatedProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginatedProducts = freezed,
    Object? hasNext = null,
    Object? isFetching = null,
  }) {
    return _then(_value.copyWith(
      paginatedProducts: freezed == paginatedProducts
          ? _value.paginatedProducts
          : paginatedProducts // ignore: cast_nullable_to_non_nullable
              as PaginatedProducts?,
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
  $PaginatedProductsCopyWith<$Res>? get paginatedProducts {
    if (_value.paginatedProducts == null) {
      return null;
    }

    return $PaginatedProductsCopyWith<$Res>(_value.paginatedProducts!, (value) {
      return _then(_value.copyWith(paginatedProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaginatedProductsStateCopyWith<$Res>
    implements $PaginatedProductsStateCopyWith<$Res> {
  factory _$$_PaginatedProductsStateCopyWith(_$_PaginatedProductsState value,
          $Res Function(_$_PaginatedProductsState) then) =
      __$$_PaginatedProductsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginatedProducts? paginatedProducts, bool hasNext, bool isFetching});

  @override
  $PaginatedProductsCopyWith<$Res>? get paginatedProducts;
}

/// @nodoc
class __$$_PaginatedProductsStateCopyWithImpl<$Res>
    extends _$PaginatedProductsStateCopyWithImpl<$Res,
        _$_PaginatedProductsState>
    implements _$$_PaginatedProductsStateCopyWith<$Res> {
  __$$_PaginatedProductsStateCopyWithImpl(_$_PaginatedProductsState _value,
      $Res Function(_$_PaginatedProductsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginatedProducts = freezed,
    Object? hasNext = null,
    Object? isFetching = null,
  }) {
    return _then(_$_PaginatedProductsState(
      paginatedProducts: freezed == paginatedProducts
          ? _value.paginatedProducts
          : paginatedProducts // ignore: cast_nullable_to_non_nullable
              as PaginatedProducts?,
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

class _$_PaginatedProductsState extends _PaginatedProductsState {
  _$_PaginatedProductsState(
      {this.paginatedProducts, this.hasNext = true, this.isFetching = false})
      : super._();

  @override
  final PaginatedProducts? paginatedProducts;
  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final bool isFetching;

  @override
  String toString() {
    return 'PaginatedProductsState(paginatedProducts: $paginatedProducts, hasNext: $hasNext, isFetching: $isFetching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedProductsState &&
            (identical(other.paginatedProducts, paginatedProducts) ||
                other.paginatedProducts == paginatedProducts) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paginatedProducts, hasNext, isFetching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedProductsStateCopyWith<_$_PaginatedProductsState> get copyWith =>
      __$$_PaginatedProductsStateCopyWithImpl<_$_PaginatedProductsState>(
          this, _$identity);
}

abstract class _PaginatedProductsState extends PaginatedProductsState {
  factory _PaginatedProductsState(
      {final PaginatedProducts? paginatedProducts,
      final bool hasNext,
      final bool isFetching}) = _$_PaginatedProductsState;
  _PaginatedProductsState._() : super._();

  @override
  PaginatedProducts? get paginatedProducts;
  @override
  bool get hasNext;
  @override
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedProductsStateCopyWith<_$_PaginatedProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}
