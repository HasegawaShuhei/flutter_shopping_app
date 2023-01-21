import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/http/http_client.dart';
import '../models/user.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final client = ref.read(httpClientProvider);
  return UserRepository(client);
});

class UserRepository {
  UserRepository(this._client);

  final HttpClient _client;

  Future<User> fetch() async {
    final json = await _client.get(path: '/users/1');
    return User.fromJson(json);
  }
}
