import 'package:grocery/imports.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void _verifyOtp() {
  String otp = Get.find<OtpScreen>()._otpController.text;
  if (otp.length == 6) {
    Get.snackbar('otp_verification'.tr, 'OTP $otp verified successfully!');
  } else {
    Get.snackbar('error'.tr, 'please_enter_6_digit_valid_otp'.tr);
  }
}

void _resendOtp() {
  Get.showSnackbar(
    GetSnackBar(
      title: 'resent_otp'.tr,
      message: 'otp_has_been_resent_to_your_email'.tr,
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

class OtpScreen extends StatelessWidget {
  final _otpController = TextEditingController();

  OtpScreen({super.key});

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
                      onPressed: () => Get.toNamed('/forgot-password'),
                    ),
                    // Expanded(
                    //   child: Center(
                    //     child: Text(
                    //       'OTP Verification',
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

              // ----------White container
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
                      top: 60,
                      left: 24,
                      right: 24,
                      bottom: 24,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        Text(
                          'enter_verification_code'.tr,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'we_have_sent_verification_code_to_your_email'.tr,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const SizedBox(height: 32),

                        // --------- OTP Input Field
                        PinCodeTextField(
                          appContext: context,
                          length: 6,
                          controller: _otpController,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(12),
                            fieldHeight: 60,
                            fieldWidth: 50,
                            activeFillColor: Colors.white,
                            activeColor: AppColors.textPrimary,
                            inactiveColor: Colors.grey[300],
                            selectedColor: AppColors.textPrimary,
                            inactiveFillColor: Colors.white,
                            selectedFillColor: Colors.white,
                          ),
                          animationType: AnimationType.fade,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {},
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),

                        // ---------Verify Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _verifyOtp,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.textPrimary,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'verify_otp'.tr,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // ---------Resend OTP Option
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "did_not_receive_code".tr,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            TextButton(
                              onPressed: _resendOtp,
                              child: Text(
                                "resend_code".tr,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(ImageAssets.otpIcon, width: 300, height: 300),
            ),
          ),
        ],
      ),
    );
  }
}
