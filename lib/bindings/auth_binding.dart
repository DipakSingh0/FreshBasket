// bindings/auth_binding.dart

import 'package:grocery/imports.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    // Get.lazyPut(() => AuthController());
  }
}
