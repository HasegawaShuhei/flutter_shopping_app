import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../exceptions/api_exception.dart';
import '../extensions/dio_error_extension.dart';
import '../utils/types.dart';
import 'abstract_http_client.dart';
import 'dio/dio.dart';

final httpClientProvider = Provider<HttpClient>((ref) {
  final dio = ref.read(dioProvider);
  return HttpClient(dio);
});

class HttpClient implements AbstractHttpClient {
  const HttpClient(this._dio);

  final Dio _dio;

  @override
  Future<JsonMap> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        path,
        queryParameters: queryParameters,
      );
      return toResponseJson(response.data);
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        throw NetworkNotConnectedException(message: e.message);
      } else if (e.isConnectionTimeout) {
        throw ApiTimeoutException(message: e.message);
      }
      throw ApiException(message: e.message);
    } on Exception catch (e) {
      throw ApiException(message: e.toString());
    }
  }

  @override
  Future<JsonMap> post({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<JsonMap> delete({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<JsonMap> patch({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<JsonMap> put({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) {
    throw UnimplementedError();
  }

  @visibleForTesting
  Map<String, dynamic> toResponseJson(dynamic data) {
    if (data == null) {
      return <String, dynamic>{};
    }
    if (data is List) {
      return <String, dynamic>{'items': data};
    }
    if (data is Map) {
      return data as Map<String, dynamic>;
    }
    return <String, dynamic>{};
  }
}
