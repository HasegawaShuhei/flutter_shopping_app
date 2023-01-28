// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCredentials _$UserCredentialsFromJson(Map<String, dynamic> json) {
  return _UserCredentials.fromJson(json);
}

/// @nodoc
mixin _$UserCredentials {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCredentialsCopyWith<UserCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsCopyWith<$Res> {
  factory $UserCredentialsCopyWith(
          UserCredentials value, $Res Function(UserCredentials) then) =
      _$UserCredentialsCopyWithImpl<$Res, UserCredentials>;
  @useResult
  $Res call({String token, @JsonKey(name: 'id') int? userId});
}

/// @nodoc
class _$UserCredentialsCopyWithImpl<$Res, $Val extends UserCredentials>
    implements $UserCredentialsCopyWith<$Res> {
  _$UserCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCredentialsCopyWith<$Res>
    implements $UserCredentialsCopyWith<$Res> {
  factory _$$_UserCredentialsCopyWith(
          _$_UserCredentials value, $Res Function(_$_UserCredentials) then) =
      __$$_UserCredentialsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, @JsonKey(name: 'id') int? userId});
}

/// @nodoc
class __$$_UserCredentialsCopyWithImpl<$Res>
    extends _$UserCredentialsCopyWithImpl<$Res, _$_UserCredentials>
    implements _$$_UserCredentialsCopyWith<$Res> {
  __$$_UserCredentialsCopyWithImpl(
      _$_UserCredentials _value, $Res Function(_$_UserCredentials) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userId = freezed,
  }) {
    return _then(_$_UserCredentials(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCredentials extends _UserCredentials {
  _$_UserCredentials({this.token = '', @JsonKey(name: 'id') this.userId})
      : super._();

  factory _$_UserCredentials.fromJson(Map<String, dynamic> json) =>
      _$$_UserCredentialsFromJson(json);

  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey(name: 'id')
  final int? userId;

  @override
  String toString() {
    return 'UserCredentials(token: $token, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCredentials &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCredentialsCopyWith<_$_UserCredentials> get copyWith =>
      __$$_UserCredentialsCopyWithImpl<_$_UserCredentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCredentialsToJson(
      this,
    );
  }
}

abstract class _UserCredentials extends UserCredentials {
  factory _UserCredentials(
      {final String token,
      @JsonKey(name: 'id') final int? userId}) = _$_UserCredentials;
  _UserCredentials._() : super._();

  factory _UserCredentials.fromJson(Map<String, dynamic> json) =
      _$_UserCredentials.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'id')
  int? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_UserCredentialsCopyWith<_$_UserCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}
