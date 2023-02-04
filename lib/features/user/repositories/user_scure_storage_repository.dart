import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/extensions/string_extension.dart';
import '../../../core/utils/logger.dart';
import '../models/user_credentials.dart';

final userSecureStorageRepositoryProvider =
    Provider<UserSecureStorageRepository>(
  (ref) => UserSecureStorageRepository(),
);

class UserSecureStorageRepository {
  FlutterSecureStorage get storage => const FlutterSecureStorage();

  static const String tokenKey = 'tokenKey';
  static const String userIdKey = 'userIdKey';

  Future<UserCredentials> getUserCredentials() async {
    final token = await _getToken();
    final userId = await _getUserId();
    logger.i('UserCredentials: $token, $userId');
    return UserCredentials(token: token, userId: userId);
  }

  Future<void> saveUserCredentials({
    required UserCredentials credentials,
  }) async {
    await Future.wait([
      _saveToken(token: credentials.token),
      _saveUserId(userId: credentials.userId!),
    ]);
  }

  Future<void> deleteUserCredentials() async {
    await storage.deleteAll();
  }

  Future<String> _getToken() async {
    return await storage.read(key: tokenKey) ?? '';
  }

  Future<void> _saveToken({required String token}) async {
    await storage.write(key: tokenKey, value: token);
  }

  Future<int?> _getUserId() async {
    final userId = await storage.read(key: userIdKey);
    return userId?.toInt();
  }

  Future<void> _saveUserId({required int userId}) async {
    await storage.write(key: userIdKey, value: userId.toString());
  }
}
