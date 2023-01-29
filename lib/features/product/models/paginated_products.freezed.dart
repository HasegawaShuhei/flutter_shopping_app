// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedProducts _$PaginatedProductsFromJson(Map<String, dynamic> json) {
  return _PaginatedProducts.fromJson(json);
}

/// @nodoc
mixin _$PaginatedProducts {
  List<Product> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'skip')
  int get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedProductsCopyWith<PaginatedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedProductsCopyWith<$Res> {
  factory $PaginatedProductsCopyWith(
          PaginatedProducts value, $Res Function(PaginatedProducts) then) =
      _$PaginatedProductsCopyWithImpl<$Res, PaginatedProducts>;
  @useResult
  $Res call(
      {List<Product> products,
      int total,
      int limit,
      @JsonKey(name: 'skip') int offset});
}

/// @nodoc
class _$PaginatedProductsCopyWithImpl<$Res, $Val extends PaginatedProducts>
    implements $PaginatedProductsCopyWith<$Res> {
  _$PaginatedProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedProductsCopyWith<$Res>
    implements $PaginatedProductsCopyWith<$Res> {
  factory _$$_PaginatedProductsCopyWith(_$_PaginatedProducts value,
          $Res Function(_$_PaginatedProducts) then) =
      __$$_PaginatedProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> products,
      int total,
      int limit,
      @JsonKey(name: 'skip') int offset});
}

/// @nodoc
class __$$_PaginatedProductsCopyWithImpl<$Res>
    extends _$PaginatedProductsCopyWithImpl<$Res, _$_PaginatedProducts>
    implements _$$_PaginatedProductsCopyWith<$Res> {
  __$$_PaginatedProductsCopyWithImpl(
      _$_PaginatedProducts _value, $Res Function(_$_PaginatedProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$_PaginatedProducts(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedProducts extends _PaginatedProducts {
  const _$_PaginatedProducts(
      {final List<Product> products = const <Product>[],
      this.total = 0,
      this.limit = 0,
      @JsonKey(name: 'skip') this.offset = 0})
      : _products = products,
        super._();

  factory _$_PaginatedProducts.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedProductsFromJson(json);

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey(name: 'skip')
  final int offset;

  @override
  String toString() {
    return 'PaginatedProducts(products: $products, total: $total, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedProducts &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), total, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedProductsCopyWith<_$_PaginatedProducts> get copyWith =>
      __$$_PaginatedProductsCopyWithImpl<_$_PaginatedProducts>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedProductsToJson(
      this,
    );
  }
}

abstract class _PaginatedProducts extends PaginatedProducts {
  const factory _PaginatedProducts(
      {final List<Product> products,
      final int total,
      final int limit,
      @JsonKey(name: 'skip') final int offset}) = _$_PaginatedProducts;
  const _PaginatedProducts._() : super._();

  factory _PaginatedProducts.fromJson(Map<String, dynamic> json) =
      _$_PaginatedProducts.fromJson;

  @override
  List<Product> get products;
  @override
  int get total;
  @override
  int get limit;
  @override
  @JsonKey(name: 'skip')
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedProductsCopyWith<_$_PaginatedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}
