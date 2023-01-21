import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'header_intercepter.dart';
import 'request_intercepter.dart';
import 'response_intercepter.dart';

final dioProvider = Provider<Dio>((ref) {
  final interceptors = [
    ref.read(headerInterceptorProvider),
    ref.read(requestInterceptorProvider),
    ref.read(responseInterceptorProvider),
  ];
  return _buildDio(interceptors: interceptors);
});

Dio _buildDio({required List<Interceptor> interceptors}) {
  final dio = Dio()
    ..httpClientAdapter = DefaultHttpClientAdapter()
    ..options = BaseOptions(
      baseUrl: 'https://dummyjson.com',
      connectTimeout: 5000,
      receiveTimeout: 3000,
      contentType: Headers.jsonContentType,
      validateStatus: (_) => true,
    )
    ..interceptors.addAll(interceptors);
  return dio;
}
