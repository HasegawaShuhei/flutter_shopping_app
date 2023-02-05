// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsState {
  PaginatedResponse<Product>? get paginatedProducts =>
      throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call(
      {PaginatedResponse<Product>? paginatedProducts,
      bool hasNext,
      bool isFetching});

  $PaginatedResponseCopyWith<Product, $Res>? get paginatedProducts;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

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
              as PaginatedResponse<Product>?,
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
  $PaginatedResponseCopyWith<Product, $Res>? get paginatedProducts {
    if (_value.paginatedProducts == null) {
      return null;
    }

    return $PaginatedResponseCopyWith<Product, $Res>(_value.paginatedProducts!,
        (value) {
      return _then(_value.copyWith(paginatedProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductsStateCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$_ProductsStateCopyWith(
          _$_ProductsState value, $Res Function(_$_ProductsState) then) =
      __$$_ProductsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginatedResponse<Product>? paginatedProducts,
      bool hasNext,
      bool isFetching});

  @override
  $PaginatedResponseCopyWith<Product, $Res>? get paginatedProducts;
}

/// @nodoc
class __$$_ProductsStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$_ProductsState>
    implements _$$_ProductsStateCopyWith<$Res> {
  __$$_ProductsStateCopyWithImpl(
      _$_ProductsState _value, $Res Function(_$_ProductsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginatedProducts = freezed,
    Object? hasNext = null,
    Object? isFetching = null,
  }) {
    return _then(_$_ProductsState(
      paginatedProducts: freezed == paginatedProducts
          ? _value.paginatedProducts
          : paginatedProducts // ignore: cast_nullable_to_non_nullable
              as PaginatedResponse<Product>?,
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

class _$_ProductsState extends _ProductsState {
  _$_ProductsState(
      {this.paginatedProducts, this.hasNext = true, this.isFetching = false})
      : super._();

  @override
  final PaginatedResponse<Product>? paginatedProducts;
  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final bool isFetching;

  @override
  String toString() {
    return 'ProductsState(paginatedProducts: $paginatedProducts, hasNext: $hasNext, isFetching: $isFetching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsState &&
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
  _$$_ProductsStateCopyWith<_$_ProductsState> get copyWith =>
      __$$_ProductsStateCopyWithImpl<_$_ProductsState>(this, _$identity);
}

abstract class _ProductsState extends ProductsState {
  factory _ProductsState(
      {final PaginatedResponse<Product>? paginatedProducts,
      final bool hasNext,
      final bool isFetching}) = _$_ProductsState;
  _ProductsState._() : super._();

  @override
  PaginatedResponse<Product>? get paginatedProducts;
  @override
  bool get hasNext;
  @override
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsStateCopyWith<_$_ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}
