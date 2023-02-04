import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData light() {
    const primaryColor = Colors.blueAccent;
    final colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
    );
    final defaultThemeData = ThemeData.light();

    return defaultThemeData.copyWith(
      colorScheme: colorScheme,
    );
  }

  static ThemeData dark() {
    const primaryColor = Colors.blueAccent;
    final colorScheme = const ColorScheme.dark().copyWith(
      primary: primaryColor,
    );
    final defaultThemeData = ThemeData.dark();

    return defaultThemeData.copyWith(
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(backgroundColor: Colors.grey[850]),
    );
  }
}
