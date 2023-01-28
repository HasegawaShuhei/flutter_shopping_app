// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'user_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCredentials _$$_UserCredentialsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UserCredentials',
      json,
      ($checkedConvert) {
        final val = _$_UserCredentials(
          token: $checkedConvert('token', (v) => v as String? ?? ''),
          userId: $checkedConvert('id', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {'userId': 'id'},
    );

Map<String, dynamic> _$$_UserCredentialsToJson(_$_UserCredentials instance) =>
    <String, dynamic>{
      'token': instance.token,
      'id': instance.userId,
    };
