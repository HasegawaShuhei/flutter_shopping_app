import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'header_intercepter.dart';
import 'request_intercepter.dart';
import 'response_intercepter.dart';

final dioProvider = Provider<Dio>((ref) {
  final interceptors = [
    ref.watch(headerInterceptorProvider),
    ref.watch(requestInterceptorProvider),
    ref.watch(responseInterceptorProvider),
  ];
  return _buildDio(interceptors: interceptors);
});

Dio _buildDio({required List<Interceptor> interceptors}) {
  final dio = Dio()
    ..httpClientAdapter = HttpClientAdapter()
    ..options = BaseOptions(
      baseUrl: 'https://dummyjson.com',
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
      contentType: Headers.jsonContentType,
      validateStatus: (_) => true,
    )
    ..interceptors.addAll(interceptors);
  return dio;
}
