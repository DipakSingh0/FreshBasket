import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/themes/theme_service.dart';

class ThemeSwitchButton extends StatelessWidget {
  const ThemeSwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = Get.find<ThemeService>();

    return Obx(
      () => Switch(
        value: themeService.isDarkMode.value,
        onChanged: (value) => themeService.switchTheme(),
        activeColor: themeService.backgroundColor,
        inactiveThumbColor: themeService.cardColor,
      ),
    );
  }
}
