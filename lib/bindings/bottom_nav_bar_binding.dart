import 'package:grocery/imports.dart';

class BottomNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavBarController>(() => BottomNavBarController());
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    ); // <--- add this
  }
}
