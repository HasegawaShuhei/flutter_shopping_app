import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeData {
  static ThemeData light() {
    const primaryColor = AppColors.primaryColor;
    final colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      onPrimary: AppColors.white,
      secondary: primaryColor,
      onSecondary: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.lightBlack,
      background: AppColors.white,
      onBackground: AppColors.lightBlack,
    );
    final defaultThemeData = ThemeData.light();

    return defaultThemeData.copyWith(
      colorScheme: colorScheme,
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => primaryColor),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.black,
        ),
      ),
    );
  }

  static ThemeData dark() {
    const primaryColor = AppColors.primaryColor;
    final colorScheme = const ColorScheme.dark().copyWith(
      primary: primaryColor,
      onPrimary: AppColors.white,
      secondary: primaryColor,
      onSecondary: AppColors.black,
      surface: AppColors.darkGrey,
      onSurface: AppColors.white,
      background: AppColors.lightBlack,
      onBackground: AppColors.white,
    );
    final defaultThemeData = ThemeData.dark();

    return defaultThemeData.copyWith(
      colorScheme: colorScheme,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.white,
        ),
      ),
    );
  }
}
