import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/config/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void _verifyOtp() {}

void _resendOtp() {
  Get.snackbar('Resend OTP', 'OTP has been resent!');
}

class OtpVerificationScreen extends StatelessWidget {
  final _otpController = TextEditingController();

  OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(
      //   title: 'OTP Verification Screen',
      //   centerTitle: true,
      //   onLeadingPressed: () {
      //     Get.back();
      //   },
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
      //     onPressed: () => Get.back(),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OtpHeader(),
              OtpActions(
                otpController: _otpController,
                onVerifyPressed: _verifyOtp,
                onResendPressed: _resendOtp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/lock_icon.png',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'OTP Verification',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 18),
        Text(
          'We have sent a verification code to your email number.',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        const SizedBox(height: 52),
      ],
    );
  }
}

class OtpActions extends StatelessWidget {
  final TextEditingController otpController;
  final VoidCallback onVerifyPressed;
  final VoidCallback onResendPressed;

  const OtpActions({
    super.key,
    required this.otpController,
    required this.onVerifyPressed,
    required this.onResendPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // OTP Input Field
        PinCodeTextField(
          appContext: context,
          length: 6,
          controller: otpController,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(8),
            fieldHeight: 50,
            fieldWidth: 45,
            activeFillColor: Colors.white,
            activeColor: AppColors.primary,
            inactiveColor: Colors.grey[300],
            selectedColor: AppColors.primary,
            inactiveFillColor: Colors.white,
            selectedFillColor: Colors.white,
          ),
          animationType: AnimationType.fade,
          keyboardType: TextInputType.number,
          onChanged: (value) {},
          textStyle: Theme.of(context).textTheme.titleLarge,
        ),

        const SizedBox(height: 42),

        // Verify Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onVerifyPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Verify OTP',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),

        const SizedBox(height: 26),

        // Resend OTP Option
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Didn't receive code?",
              style: TextStyle(color: Colors.grey),
            ),
            TextButton(
              onPressed: onResendPressed,
              child: Text("Resend", style: TextStyle(color: AppColors.primary)),
            ),
          ],
        ),
      ],
    );
  }
}
