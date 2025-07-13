import 'package:get/get.dart';
import 'package:grocery/controllers/bottom_nav_controller.dart';

class BottomNavBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavBarController>(() => BottomNavBarController());
  }
}
