// bindings/auth_binding.dart
import 'package:get/get.dart';
import 'package:grocery/controllers/auth_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    // Get.lazyPut(() => AuthController());
  }
}
