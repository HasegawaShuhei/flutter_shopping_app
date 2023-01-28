import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/providers/error.dart';
import '../repositories/user_repository.dart';
import '../repositories/user_scure_storage_repository.dart';
import 'user_credentials.dart';

final loginNotifierProvider =
    AsyncNotifierProvider.autoDispose<LoginNotifier, void>(
  LoginNotifier.new,
  name: 'loginNotifierProvider',
);

class LoginNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    return null;
  }

  Future<void> login({
    required String userName,
    required String password,
  }) async {
    try {
      /// view側でdata.isLoadingのように分岐をする必要があり、whenのisLoadingが再度表示されるものではない
      state = const AsyncLoading<void>();

      /// ログインのレスポンスからuserIdとtokenを取得
      final userCredentials = await ref.read(userRepositoryProvider).login(
            userName: userName,
            password: password,
          );
      // ローディングを止める
      state = const AsyncData(null);

      /// userIdとtokenを保存
      await ref
          .read(userSecureStorageRepositoryProvider)
          .saveUserCredentials(credentials: userCredentials);

      /// credentialsを再取得してログイン状態を更新する
      ref.invalidate(userCredentialsProvider);
    } on Exception catch (e, st) {
      state = AsyncError(e, st);
      ref.read(errorProvider.notifier).update((_) => e);
    }
  }
}
