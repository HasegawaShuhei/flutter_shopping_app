// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Product',
      json,
      ($checkedConvert) {
        final val = _$_Product(
          id: $checkedConvert('id', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          price: $checkedConvert('price', (v) => v as int),
          discountPercentage: $checkedConvert(
              'discountPercentage', (v) => (v as num).toDouble()),
          rating: $checkedConvert('rating', (v) => (v as num?)?.toDouble()),
          stock: $checkedConvert('stock', (v) => v as int?),
          brand: $checkedConvert('brand', (v) => v as String?),
          thumbnailUrl: $checkedConvert('thumbnail', (v) => v as String?),
          imageUrls: $checkedConvert('images',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'thumbnailUrl': 'thumbnail', 'imageUrls': 'images'},
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'brand': instance.brand,
      'thumbnail': instance.thumbnailUrl,
      'images': instance.imageUrls,
    };
