import 'dart:io';

import 'package:dio/dio.dart';

extension DioErrorExtension on DioError {
  bool get isBadRequest {
    return type == DioErrorType.response && response?.statusCode == 400;
  }

  bool get isUnauthorized {
    return type == DioErrorType.response && response?.statusCode == 401;
  }

  bool get isForbidden {
    return type == DioErrorType.response && response?.statusCode == 403;
  }

  bool get isNotFound {
    return type == DioErrorType.response && response?.statusCode == 404;
  }

  bool get isInternalServerError {
    return type == DioErrorType.response && response?.statusCode == 500;
  }

  bool get isServiceUnavailable {
    return type == DioErrorType.response && response?.statusCode == 503;
  }

  bool get isNoConnectionError {
    return type == DioErrorType.other && error is SocketException;
  }

  bool get isConnectionTimeout {
    return type == DioErrorType.connectTimeout ||
        type == DioErrorType.receiveTimeout ||
        type == DioErrorType.sendTimeout;
  }
}
