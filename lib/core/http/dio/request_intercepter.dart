import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/logger.dart';

final requestInterceptorProvider = Provider<RequestInterceptor>(
  (ref) => RequestInterceptor(),
);

class RequestInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    logger.i('*** Request ***');
    _printCurlCommand(options);
    super.onRequest(options, handler);
  }

  void _printCurlCommand(RequestOptions options) {
    var query = '';
    if (options.method == 'GET' && options.queryParameters.isNotEmpty) {
      query = '?${options.queryParameters.entries.map(
            (e) => '${e.key}=${e.value}',
          ).toList().join('&')}';
    }
    final requestUrl = '${options.baseUrl}${options.path}$query';
    logger.i('curl -X ${options.method} $requestUrl');
    for (final key in options.headers.keys) {
      logger.i('-H "$key: ${options.headers[key]}"');
    }
    if (options.data != null && options.data is Map) {
      logger.i('-d ${jsonEncode(options.data)}');
    }
  }
}
