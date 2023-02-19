import 'package:dio/dio.dart';

extension DioErrorExtension on DioError {
  bool get isBadRequest =>
      type == DioErrorType.badResponse && response?.statusCode == 400;

  bool get isBadCertificate => type == DioErrorType.badCertificate;

  bool get isConnectionTimeout {
    return type == DioErrorType.connectionTimeout ||
        type == DioErrorType.receiveTimeout ||
        type == DioErrorType.sendTimeout;
  }
}
