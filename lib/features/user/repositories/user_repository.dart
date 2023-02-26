import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/http/http_client.dart';
import '../models/user.dart';
import '../models/user_credentials.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final client = ref.watch(httpClientProvider);
  return UserRepository(client);
});

class UserRepository {
  UserRepository(this._client);

  final HttpClient _client;

  Future<User> fetch({required int userId}) async {
    final json = await _client.get(path: '/users/$userId');
    return User.fromJson(json);
  }

  Future<UserCredentials> login({
    required String userName,
    required String password,
  }) async {
    final data = <String, dynamic>{
      'username': userName,
      'password': password,
    };

    final json = await _client.post(
      path: '/auth/login',
      data: data,
    );
    return UserCredentials.fromJson(json);
  }
}
