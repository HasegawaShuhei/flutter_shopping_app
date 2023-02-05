import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text.dart';

class AppThemeData {
  static ThemeData light() {
    const primaryColor = AppColors.primaryColor;
    final colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
    );
    final defaultThemeData = ThemeData.light();

    return defaultThemeData.copyWith(
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightBackgroundColor,
        titleTextStyle: AppTextStytles.s20W500.copyWith(
          color: AppColors.black,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => primaryColor),
      ),
    );
  }

  static ThemeData dark() {
    const primaryColor = AppColors.primaryColor;
    final colorScheme = const ColorScheme.dark().copyWith(
      primary: primaryColor,
    );
    final defaultThemeData = ThemeData.dark();

    return defaultThemeData.copyWith(
      colorScheme: colorScheme,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkBackgroundColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
