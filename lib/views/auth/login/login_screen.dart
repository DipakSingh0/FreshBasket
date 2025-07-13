import 'package:grocery/imports.dart';
import 'package:grocery/views/widgets/common/primary_button.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final AuthController authController = Get.find<AuthController>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // -------------black background
          Container(
            padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
            child: Text(
              'welcome_back'.tr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // ---------- white container bottom
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 60),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 32),
                      // Email Field
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'email'.tr,
                          prefixIcon: Icon(
                            Icons.email,
                            color: AppColors.textPrimary,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter_your_email'.tr;
                          }
                          final bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                          ).hasMatch(value);

                          if (!emailValid) {
                            return 'enter_valid_email_address'.tr;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),

                      // Password Field
                      Obx(
                        () => TextFormField(
                          controller: _passwordController,
                          obscureText: authController.obscurePassword.value,
                          decoration: InputDecoration(
                            labelText: 'password'.tr,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: AppColors.textPrimary,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                authController.obscurePassword.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () =>
                                  authController.togglePasswordVisibility(),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter_your_password'.tr;
                            }
                            if (value.length < 6) {
                              return 'password_must_be_at_least_6_characters'
                                  .tr;
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 18),

                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () => Get.toNamed('/forgot-password'),
                          child: Text(
                            'forgot_password'.tr,
                            style: TextStyle(
                              color: AppColors.textPrimary,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),

                      // Login Button
                      Obx(
                        () => PrimaryButton(
                          text: 'login'.tr,
                          isLoading: authController.isLoading.value,
                          backgroundColor: AppColors.textPrimary,
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              authController.login(
                                _emailController.text.trim(),
                                _passwordController.text.trim(),
                              );
                            }
                          },
                        ),
                      ),

                      const SizedBox(height: 16),

                      // "Or login with" divider
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Row(
                          children: [
                            Expanded(child: Divider()),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text('or_continue_with'.tr),
                            ),
                            Expanded(child: Divider()),
                          ],
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Social login buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Google button
                          IconButton(
                            icon: Image.asset(
                              ImageAssets.googleIcon,
                              width: 40,
                            ),
                            onPressed: () => null,
                            // authController.socialLogin('google'),
                          ),
                          const SizedBox(width: 42),

                          // Facebook button
                          IconButton(
                            icon: Image.asset(ImageAssets.fbIcon, width: 40),
                            onPressed: () => null,
                            // authController.socialLogin('facebook'),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Register link at bottom
                      Center(
                        child: TextButton(
                          onPressed: () => Get.toNamed('/register'),
                          child: Text(
                            'dont_have_an_account'.tr,
                            style: TextStyle(color: AppColors.textPrimary),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
