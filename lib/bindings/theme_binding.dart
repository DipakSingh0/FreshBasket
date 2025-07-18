import 'package:get/get.dart';
import 'package:grocery/themes/theme_service.dart';

class ThemeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeService>(() => ThemeService(), fenix: true);
  }
}
