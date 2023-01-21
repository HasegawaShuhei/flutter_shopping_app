import 'app_exception.dart';

class ApiException extends AppException implements Exception {
  const ApiException({
    super.code,
    super.message,
    super.defaultMessage = 'サーバとの接続に失敗しました。',
  });
}

/// リクエストがタイムアウトした場合の例外
class ApiTimeoutException extends ApiException {
  const ApiTimeoutException({super.message})
      : super(
          defaultMessage: '通信がタイムアウトしました。'
              '通信環境をご確認のうえ、再度実行してください。',
        );
}

/// リクエスト時のネットワーク接続に問題がある場合の例外
class NetworkNotConnectedException extends ApiException {
  const NetworkNotConnectedException({super.message})
      : super(
          defaultMessage: 'ネットワーク接続がありません。',
        );
}
