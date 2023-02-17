// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Cart',
      json,
      ($checkedConvert) {
        final val = _$_Cart(
          id: $checkedConvert('id', (v) => v as int),
          products: $checkedConvert(
              'products',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const <Product>[]),
          total: $checkedConvert('total', (v) => v as int),
          discountedTotal: $checkedConvert('discountedTotal', (v) => v as int),
          totalProducts: $checkedConvert('totalProducts', (v) => v as int),
          totalQuantity: $checkedConvert('totalQuantity', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
      'id': instance.id,
      'products': instance.products,
      'total': instance.total,
      'discountedTotal': instance.discountedTotal,
      'totalProducts': instance.totalProducts,
      'totalQuantity': instance.totalQuantity,
    };
