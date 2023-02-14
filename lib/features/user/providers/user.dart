import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/user.dart';
import '../repositories/user_repository.dart';

final userProvider = FutureProvider<User>(
  (ref) async {
    return ref.read(userRepositoryProvider).fetch();
  },
  name: 'userProvider',
);
