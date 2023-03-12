import 'package:dio/dio.dart';

import '../utils/types.dart';

abstract class AbstractHttpClient {
  Future<JsonMap> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  });

  Future<JsonMap> post({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  });

  Future<JsonMap> delete({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  });

  Future<JsonMap> patch({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  });

  Future<JsonMap> put({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  });
}
