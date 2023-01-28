import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../repositories/user_scure_storage_repository.dart';
import 'user_credentials.dart';

final userServiceProvider = Provider<UserService>(UserService.new);

/// 状態管理が必要ない(Notifierに保持する必要のない)処理群
class UserService {
  const UserService(this._ref);

  final Ref _ref;

  /// userCredentialsを削除することでログアウト状態にする
  Future<void> logout() async {
    await _ref
        .read(userSecureStorageRepositoryProvider)
        .deleteUserCredentials();
    _ref.invalidate(userCredentialsProvider);
  }
}
