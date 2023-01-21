import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../repositories/user_scure_storage_repository.dart';

final tokenProvider = FutureProvider<String>(
  (ref) {
    final repository = ref.read(userSecureStorageRepositoryProvider);
    return repository.getToken();
  },
  name: 'tokenProvider',
);
