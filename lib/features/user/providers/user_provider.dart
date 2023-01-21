import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/user.dart';
import '../repositories/user_repository.dart';

final userProvider = FutureProvider<User>(
  (ref) async {
    final repository = ref.read(userRepositoryProvider);
    return repository.fetch();
  },
  name: 'userProvider',
);
