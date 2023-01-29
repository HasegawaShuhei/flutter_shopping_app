// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'paginated_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedProducts _$$_PaginatedProductsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PaginatedProducts',
      json,
      ($checkedConvert) {
        final val = _$_PaginatedProducts(
          products: $checkedConvert(
              'products',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const <Product>[]),
          total: $checkedConvert('total', (v) => v as int? ?? 0),
          limit: $checkedConvert('limit', (v) => v as int? ?? 0),
          offset: $checkedConvert('skip', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {'offset': 'skip'},
    );

Map<String, dynamic> _$$_PaginatedProductsToJson(
        _$_PaginatedProducts instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'limit': instance.limit,
      'skip': instance.offset,
    };
