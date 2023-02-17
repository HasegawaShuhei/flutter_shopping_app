// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String>? get imageUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      int price,
      double discountPercentage,
      double? rating,
      int? stock,
      String? brand,
      @JsonKey(name: 'thumbnail') String? thumbnailUrl,
      @JsonKey(name: 'images') List<String>? imageUrls});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = freezed,
    Object? stock = freezed,
    Object? brand = freezed,
    Object? thumbnailUrl = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: freezed == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      int price,
      double discountPercentage,
      double? rating,
      int? stock,
      String? brand,
      @JsonKey(name: 'thumbnail') String? thumbnailUrl,
      @JsonKey(name: 'images') List<String>? imageUrls});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = freezed,
    Object? stock = freezed,
    Object? brand = freezed,
    Object? thumbnailUrl = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: freezed == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product extends _Product {
  _$_Product(
      {required this.id,
      required this.title,
      this.description,
      required this.price,
      required this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      @JsonKey(name: 'thumbnail') this.thumbnailUrl,
      @JsonKey(name: 'images') final List<String>? imageUrls})
      : _imageUrls = imageUrls,
        super._();

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final int price;
  @override
  final double discountPercentage;
  @override
  final double? rating;
  @override
  final int? stock;
  @override
  final String? brand;
  @override
  @JsonKey(name: 'thumbnail')
  final String? thumbnailUrl;
  final List<String>? _imageUrls;
  @override
  @JsonKey(name: 'images')
  List<String>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, thumbnailUrl: $thumbnailUrl, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      price,
      discountPercentage,
      rating,
      stock,
      brand,
      thumbnailUrl,
      const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product extends Product {
  factory _Product(
      {required final int id,
      required final String title,
      final String? description,
      required final int price,
      required final double discountPercentage,
      final double? rating,
      final int? stock,
      final String? brand,
      @JsonKey(name: 'thumbnail') final String? thumbnailUrl,
      @JsonKey(name: 'images') final List<String>? imageUrls}) = _$_Product;
  _Product._() : super._();

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  int get price;
  @override
  double get discountPercentage;
  @override
  double? get rating;
  @override
  int? get stock;
  @override
  String? get brand;
  @override
  @JsonKey(name: 'thumbnail')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'images')
  List<String>? get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
