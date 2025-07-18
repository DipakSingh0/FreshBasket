// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// class ThemeService {
//   final _box = GetStorage();
//   final _key = 'isDarkMode';

//   ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

//   bool _loadThemeFromBox() => _box.read(_key) ?? false;

//   _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

//   void switchTheme() {
//     Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
//     _saveThemeToBox(!_loadThemeFromBox());
//   }

//   // Add these getters for theme-aware colors
//   Color get backgroundColor =>
//       Get.isDarkMode ? Colors.grey[900]! : Colors.white;
//   Color get cardColor => Get.isDarkMode ? Colors.grey[800]! : Colors.grey[100]!;
//   Color get textColor => Get.isDarkMode ? Colors.white : Colors.black;
//   Color get iconColor => Get.isDarkMode ? Colors.white : Colors.black;
// }
