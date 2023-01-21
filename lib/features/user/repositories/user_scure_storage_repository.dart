import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userSecureStorageRepositoryProvider =
    Provider<UserSecureStorageRepository>(
  (ref) => UserSecureStorageRepository(),
);

class UserSecureStorageRepository {
  FlutterSecureStorage get storage => const FlutterSecureStorage();

  Future<String> getToken() async {
    return await storage.read(key: 'token') ?? '';
  }

  Future<void> saveToken({required String token}) async {
    await storage.write(key: 'toekn', value: token);
  }
}
