import 'package:grocery/imports.dart';

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
      return 'please_enter_your_email'.tr;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'please_enter_valid_email_address'.tr;
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
          title: 'otp_sent'.tr,
          message: 'otp_is_being_sent_to_your_email'.tr,
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
                        Text(
                          'reset_your_password'.tr,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'enter_your_email_to_reset_password'.tr,
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
                                  labelText: 'email'.tr,
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
                                text: "get_otp".tr,
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
