import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/providers/shared_preferences.dart';
import 'core/utils/logger.dart';
import 'ui/shopping_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  late final SharedPreferences sharedPreferences;

  await Future.wait<void>([
    /// 縦固定
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
    Future(
      () async => sharedPreferences = await SharedPreferences.getInstance(),
    ),
  ]);
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      observers: [ProviderLogger()],
      child: const ShoppingApp(),
    ),
  );
}
