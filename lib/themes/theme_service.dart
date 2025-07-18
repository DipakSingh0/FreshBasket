import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  // Make both the mode and colors observable
  var isDarkMode = false.obs;
  final Rx<Color> _backgroundColor = Colors.white.obs;
  final Rx<Color> _cardColor = Colors.grey[100]!.obs;
  final Rx<Color> _textColor = Colors.black.obs;
  final Rx<Color> _iconColor = Colors.black.obs;

  ThemeMode get theme => isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  @override
  void onInit() {
    super.onInit();
    isDarkMode.value = _loadThemeFromBox();
    _updateColors();
  }

  bool _loadThemeFromBox() => _box.read(_key) ?? false;

  Future<void> _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  void _updateColors() {
    _backgroundColor.value = isDarkMode.value
        ? Colors.grey[900]!
        : Colors.white;
    _cardColor.value = isDarkMode.value ? Colors.grey[800]! : Colors.grey[100]!;
    _textColor.value = isDarkMode.value ? Colors.white : Colors.black;
    _iconColor.value = isDarkMode.value ? Colors.white : Colors.black;
  }

  void switchTheme() {
    isDarkMode.toggle();
    _saveThemeToBox(isDarkMode.value);
    _updateColors();
    Get.changeThemeMode(theme);
    update(); // -------- Notify listeners
  }

  // Updated getters
  Color get backgroundColor => _backgroundColor.value;
  Color get cardColor => _cardColor.value;
  Color get textColor => _textColor.value;
  Color get iconColor => _iconColor.value;
}
