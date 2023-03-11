import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/user.dart';
import '../repositories/user_repository.dart';
import 'user_credentials.dart';

final userProvider = FutureProvider<User?>(
  (ref) async {
    try {
      final credentials = await ref.watch(userCredentialsProvider.future);
      if (!credentials.isAuthorized) {
        return null;
      }
      final user = await ref
          .read(userRepositoryProvider)
          .fetch(userId: credentials.userId!);
      return user;
    } on Exception catch (_) {
      rethrow;
    }
  },
  dependencies: [userCredentialsProvider],
  name: 'userProvider',
);
