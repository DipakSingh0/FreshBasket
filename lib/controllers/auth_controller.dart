import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  var isLoggedIn = false.obs;
  var obscurePassword = true.obs;

  void togglePasswordVisibility() {
    obscurePassword.toggle();
  }

  void login(String email, String password) {
    isLoading(true);
    Future.delayed(const Duration(seconds: 2), () {
      isLoading(false);
      isLoggedIn(true);
      Get.offAllNamed('/home'); // Navigate to home after login
    });
  }

  void register(String email, String password, String name) {
    isLoading(true);
    Future.delayed(const Duration(seconds: 2), () {
      isLoading(false);
      isLoggedIn(true);
      Get.offAllNamed('/home'); // Navigate to home after registration
    });
  }
}
