import 'package:grocery/imports.dart';
import 'package:grocery/themes/theme_service.dart';

class SettingsController extends GetxController {
  final themeService = Get.find<ThemeService>();
  var isDarkMode = false.obs;

  @override
  void onInit() {
    isDarkMode.value = themeService.theme == ThemeMode.dark;
    super.onInit();
  }

  void toggleDarkMode(bool value) {
    isDarkMode.value = value;
    themeService.switchTheme();
  }

  String get modeText => isDarkMode.value ? 'light_mode'.tr : 'dark_mode'.tr;
}
