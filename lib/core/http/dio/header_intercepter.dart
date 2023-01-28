import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../features/user/providers/user_credentials.dart';

final headerInterceptorProvider = Provider<HeaderInterceptor>(
  HeaderInterceptor.new,
);

class HeaderInterceptor extends Interceptor {
  HeaderInterceptor(this._ref);

  final Ref _ref;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Origin'] = options.baseUrl;
    options.headers['Accept'] = 'application/json';

    final credentials = await _ref.read(userCredentialsProvider.future);
    final token = credentials.token;
    if (token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }
}
