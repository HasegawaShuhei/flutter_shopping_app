import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials.freezed.dart';
part 'user_credentials.g.dart';

@freezed
class UserCredentials with _$UserCredentials {
  factory UserCredentials({
    @Default('') String token,
    @JsonKey(name: 'id') int? userId,
  }) = _UserCredentials;
  const UserCredentials._();

  factory UserCredentials.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsFromJson(json);

  /// 今回はtokenとuserIdが空でないことを認証済みの条件とする
  bool get isAuthorized => token.isNotEmpty && userId != null;
}
