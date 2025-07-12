import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/config/app_colors.dart';
import 'package:grocery/utils/image_utils.dart';
import 'package:grocery/views/widgets/common/primary_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Future.delayed(const Duration(seconds: 0), () {
        Get.toNamed('/otpScreen');
      });

      Get.showSnackbar(
        GetSnackBar(
          title: 'OTP Sent',
          message: 'OTP is being sent to your email',
          duration: const Duration(seconds: 2),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          borderRadius: 16,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          animationDuration: const Duration(milliseconds: 300),
          isDismissible: true,
          forwardAnimationCurve: Curves.easeOutQuint,
          reverseAnimationCurve: Curves.easeInQuint,
        ),
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              // Header with back button and title
              Container(
                padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Get.toNamed('/login'),
                    ),
                    // Expanded(
                    //   child: Center(
                    //     child: Text(
                    //       'Forgot Password',
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 28,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(width: 28), // for alignment
                  ],
                ),
              ),

              // Spacer to push white container down
              const SizedBox(height: 65),

              // ---- form
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(
                      top: 80,
                      left: 24,
                      right: 24,
                      bottom: 24,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          'Reset Your Password!',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Enter Your Mail Id to Reset your Password',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const SizedBox(height: 40),

                        //  ------ Form
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  prefixIcon: const Icon(Icons.email),
                                ),
                                validator: _validateEmail,
                              ),
                              const SizedBox(height: 32),

                              // ------ Reset Password Button
                              PrimaryButton(
                                onPressed: _submitForm,
                                text: "Get Password",
                                isLoading: false,
                                backgroundColor: AppColors.textPrimary,
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                verticalPadding: 16,
                                borderRadius: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          // ----icon between black and white line
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                ImageAssets.forgotPasswordIcon,
                width: 350,
                height: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
