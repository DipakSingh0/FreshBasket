import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeService {
  // final _key = 'isDarkMode';

  // Load theme from storage
  bool _loadThemeFromStorage() => Get.isDarkMode;

  // Save theme to storage
  void _saveThemeToStorage(bool isDarkMode) =>
      Get.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);

  // Get the current theme
  ThemeMode get theme =>
      _loadThemeFromStorage() ? ThemeMode.dark : ThemeMode.light;

  // Toggle theme and save
  void switchTheme() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToStorage(!Get.isDarkMode);
  }
}
