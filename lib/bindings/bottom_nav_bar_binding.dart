import 'package:get/get.dart';
import 'package:grocery/controllers/bottom_nav_controller.dart';
import 'package:grocery/controllers/settings_controller.dart';

class BottomNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavBarController>(() => BottomNavBarController());
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    ); // <--- add this
  }
}
