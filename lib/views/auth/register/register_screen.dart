import 'package:grocery/imports.dart';
import 'package:grocery/views/widgets/common/primary_button.dart';

class RegisterScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _nameController = TextEditingController();
  final AuthController authController = Get.find<AuthController>();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 24, right: 24),

            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Get.toNamed('/login'),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Center(
                    child: Text(
                      // 'Create Account',
                      'setup_your_account'.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 28), // for alignment
              ],
            ),
          ),

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

                      // Name Field
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: 'full_name'.tr,
                          prefixIcon: Icon(
                            Icons.person,
                            color: AppColors.primary,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please_enter_your_name'.tr;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),

                      // Email Field
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'email'.tr,
                          prefixIcon: Icon(
                            Icons.email,
                            color: AppColors.primary,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please_enter_your_email'.tr;
                          }
                          if (!GetUtils.isEmail(value)) {
                            return 'please_enter_valid_email_address'.tr;
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
                              color: AppColors.primary,
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
                      const SizedBox(height: 20),

                      // Confirm Password Field
                      Obx(
                        () => TextFormField(
                          controller: _confirmPasswordController,
                          obscureText: authController.obscurePassword.value,
                          decoration: InputDecoration(
                            labelText: 'confirm_password'.tr,
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: AppColors.primary,
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
                            if (value != _passwordController.text) {
                              return 'passwords_do_not_match'.tr;
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Register Button
                      Obx(
                        () => PrimaryButton(
                          text: 'register'.tr,
                          isLoading: authController.isLoading.value,
                          backgroundColor: AppColors.textPrimary,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              authController.register(
                                _emailController.text.trim(),
                                _passwordController.text.trim(),
                                _nameController.text.trim(),
                              );
                            }
                          },
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          verticalPadding: 16,
                          borderRadius: 10,
                        ),
                      ),

                      const SizedBox(height: 32),

                      // Login link at bottom
                      Center(
                        child: TextButton(
                          onPressed: () => Get.toNamed('/login'),
                          child: Text(
                            'already_have_account'.tr,
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
