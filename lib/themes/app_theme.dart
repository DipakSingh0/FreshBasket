import 'package:flutter/material.dart';
import 'theme_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.lightPrimary,
    primaryColorDark: AppColors.lightPrimaryVariant,
    colorScheme: ColorScheme.light(
      primary: AppColors.lightPrimary,
      primaryContainer: AppColors.lightPrimaryVariant,
      secondary: AppColors.lightSecondary,
      surface: AppColors.lightSurface,
      background: AppColors.lightBackground,
      onPrimary: AppColors.lightOnPrimary,
      onSecondary: AppColors.lightOnSecondary,
      onSurface: AppColors.lightTextColor,
      onBackground: AppColors.lightTextColor,
    ),
    scaffoldBackgroundColor: AppColors.lightBackground,
    cardTheme: CardThemeData(
      color: AppColors.lightContainerColor,
      elevation: 4,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightPrimary,
      iconTheme: IconThemeData(color: AppColors.lightOnPrimary),
      titleTextStyle: TextStyle(
        color: AppColors.lightOnPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 0,
    ),
    iconTheme: IconThemeData(color: AppColors.lightTextColor),
    textTheme: TextTheme(
      displayLarge: TextStyle(color: AppColors.lightTextColor),
      displayMedium: TextStyle(color: AppColors.lightTextColor),
      displaySmall: TextStyle(color: AppColors.lightTextColor),
      headlineMedium: TextStyle(color: AppColors.lightTextColor),
      headlineSmall: TextStyle(color: AppColors.lightTextColor),
      titleLarge: TextStyle(color: AppColors.lightTextColor),
      titleMedium: TextStyle(color: AppColors.lightTextColor),
      titleSmall: TextStyle(color: AppColors.lightTextColor),
      bodyLarge: TextStyle(color: AppColors.lightTextColor),
      bodyMedium: TextStyle(color: AppColors.lightTextColor),
      bodySmall: TextStyle(color: AppColors.lightTextColor),
      labelLarge: TextStyle(color: AppColors.lightTextColor),
      labelSmall: TextStyle(color: AppColors.lightTextColor),
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.lightContainerBackground.withOpacity(0.5),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.lightPrimary,
      foregroundColor: AppColors.lightOnPrimary,
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.darkPrimary,
    primaryColorDark: AppColors.darkPrimaryVariant,
    colorScheme: ColorScheme.dark(
      primary: AppColors.darkPrimary,
      primaryContainer: AppColors.darkPrimaryVariant,
      secondary: AppColors.darkSecondary,
      surface: AppColors.darkSurface,
      background: AppColors.darkBackground,
      onPrimary: AppColors.darkOnPrimary,
      onSecondary: AppColors.darkOnSecondary,
      onSurface: AppColors.darkTextColor,
      onBackground: AppColors.darkTextColor,
    ),
    scaffoldBackgroundColor: AppColors.darkBackground,
    cardTheme: CardThemeData(
      color: AppColors.darkContainerColor,
      elevation: 4,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkPrimary,
      iconTheme: IconThemeData(color: AppColors.darkOnPrimary),
      titleTextStyle: TextStyle(
        color: AppColors.darkOnPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 0,
    ),
    iconTheme: IconThemeData(color: AppColors.darkTextColor),
    textTheme: TextTheme(
      displayLarge: TextStyle(color: AppColors.darkTextColor),
      displayMedium: TextStyle(color: AppColors.darkTextColor),
      displaySmall: TextStyle(color: AppColors.darkTextColor),
      headlineMedium: TextStyle(color: AppColors.darkTextColor),
      headlineSmall: TextStyle(color: AppColors.darkTextColor),
      titleLarge: TextStyle(color: AppColors.darkTextColor),
      titleMedium: TextStyle(color: AppColors.darkTextColor),
      titleSmall: TextStyle(color: AppColors.darkTextColor),
      bodyLarge: TextStyle(color: AppColors.darkTextColor),
      bodyMedium: TextStyle(color: AppColors.darkTextColor),
      bodySmall: TextStyle(color: AppColors.darkTextColor),
      labelLarge: TextStyle(color: AppColors.darkTextColor),
      labelSmall: TextStyle(color: AppColors.darkTextColor),
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.darkContainerBackground.withOpacity(0.5),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.darkPrimary,
      foregroundColor: AppColors.darkOnPrimary,
    ),
  );
}
