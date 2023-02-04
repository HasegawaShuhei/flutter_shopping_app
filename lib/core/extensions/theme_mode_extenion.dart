import 'package:flutter/material.dart';

extension ThemeModeExtension on ThemeMode {
  String get subtitle {
    switch (this) {
      case ThemeMode.system:
        return 'システム';
      case ThemeMode.light:
        return 'ライト';
      case ThemeMode.dark:
        return 'ダーク';
    }
  }

  IconData get iconData {
    switch (this) {
      case ThemeMode.system:
        return Icons.autorenew;
      case ThemeMode.light:
        return Icons.wb_sunny;
      case ThemeMode.dark:
        return Icons.nightlife;
    }
  }
}
