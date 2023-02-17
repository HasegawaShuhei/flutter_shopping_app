// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  int get id => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get discountedTotal => throw _privateConstructorUsedError;
  int get totalProducts => throw _privateConstructorUsedError;
  int get totalQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {int id,
      List<Product> products,
      int total,
      int discountedTotal,
      int totalProducts,
      int totalQuantity});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? products = null,
    Object? total = null,
    Object? discountedTotal = null,
    Object? totalProducts = null,
    Object? totalQuantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      discountedTotal: null == discountedTotal
          ? _value.discountedTotal
          : discountedTotal // ignore: cast_nullable_to_non_nullable
              as int,
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$_CartCopyWith(_$_Cart value, $Res Function(_$_Cart) then) =
      __$$_CartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<Product> products,
      int total,
      int discountedTotal,
      int totalProducts,
      int totalQuantity});
}

/// @nodoc
class __$$_CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res, _$_Cart>
    implements _$$_CartCopyWith<$Res> {
  __$$_CartCopyWithImpl(_$_Cart _value, $Res Function(_$_Cart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? products = null,
    Object? total = null,
    Object? discountedTotal = null,
    Object? totalProducts = null,
    Object? totalQuantity = null,
  }) {
    return _then(_$_Cart(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      discountedTotal: null == discountedTotal
          ? _value.discountedTotal
          : discountedTotal // ignore: cast_nullable_to_non_nullable
              as int,
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cart extends _Cart {
  _$_Cart(
      {required this.id,
      final List<Product> products = const <Product>[],
      required this.total,
      required this.discountedTotal,
      required this.totalProducts,
      required this.totalQuantity})
      : _products = products,
        super._();

  factory _$_Cart.fromJson(Map<String, dynamic> json) => _$$_CartFromJson(json);

  @override
  final int id;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int total;
  @override
  final int discountedTotal;
  @override
  final int totalProducts;
  @override
  final int totalQuantity;

  @override
  String toString() {
    return 'Cart(id: $id, products: $products, total: $total, discountedTotal: $discountedTotal, totalProducts: $totalProducts, totalQuantity: $totalQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cart &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.discountedTotal, discountedTotal) ||
                other.discountedTotal == discountedTotal) &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_products),
      total,
      discountedTotal,
      totalProducts,
      totalQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartCopyWith<_$_Cart> get copyWith =>
      __$$_CartCopyWithImpl<_$_Cart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartToJson(
      this,
    );
  }
}

abstract class _Cart extends Cart {
  factory _Cart(
      {required final int id,
      final List<Product> products,
      required final int total,
      required final int discountedTotal,
      required final int totalProducts,
      required final int totalQuantity}) = _$_Cart;
  _Cart._() : super._();

  factory _Cart.fromJson(Map<String, dynamic> json) = _$_Cart.fromJson;

  @override
  int get id;
  @override
  List<Product> get products;
  @override
  int get total;
  @override
  int get discountedTotal;
  @override
  int get totalProducts;
  @override
  int get totalQuantity;
  @override
  @JsonKey(ignore: true)
  _$$_CartCopyWith<_$_Cart> get copyWith => throw _privateConstructorUsedError;
}
