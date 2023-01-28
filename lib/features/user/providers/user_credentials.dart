import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/user_credentials.dart';
import '../repositories/user_scure_storage_repository.dart';

final userCredentialsProvider = FutureProvider<UserCredentials>(
  (ref) async {
    final repository = ref.read(userSecureStorageRepositoryProvider);
    return repository.getUserCredentials();
  },
  name: 'userCredentialsProvider',
);
