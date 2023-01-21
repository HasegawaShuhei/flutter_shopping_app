import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    printTime: true,
  ),
);

// https://riverpod.dev/ja/docs/concepts/provider_observer/
// riverpodの変化をログに出力する ログを出力したいproviderにはnameを設定する
class ProviderLogger extends ProviderObserver {
  static const _prefix = '🌊 [RIVERPOD]';

  @override
  void didAddProvider(
    ProviderBase<dynamic> provider,
    Object? value,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.v(
        '$_prefix [ADD] $name: value = $value',
      );
    }
  }

  @override
  void providerDidFail(
    ProviderBase<dynamic> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.w(
        '$_prefix [ERROR] $name',
        error,
        stackTrace,
      );
    }
  }

  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.v(
        '$_prefix [UPDATE] $name: '
        'newValue = $newValue',
      );
    }
  }

  @override
  void didDisposeProvider(
    ProviderBase<dynamic> provider,
    // ignore: avoid_renaming_method_parameters
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.v(
        '$_prefix [DISPOSE] $name',
      );
    }
  }
}
