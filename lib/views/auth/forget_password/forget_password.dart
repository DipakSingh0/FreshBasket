import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/config/app_colors.dart';
import 'package:flutter/cupertino.dart';

class ForgotPasswordScreen1 extends StatefulWidget {
  const ForgotPasswordScreen1({super.key});

  @override
  State<ForgotPasswordScreen1> createState() => _ForgotPasswordScreen1State();
}

class _ForgotPasswordScreen1State extends State<ForgotPasswordScreen1> {
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
      Get.showSnackbar(
        GetSnackBar(
          title: 'OTP Sent',
          message: 'OTP is being sent to your email',
          duration: const Duration(seconds: 2),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          borderRadius: 8,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          animationDuration: const Duration(milliseconds: 300),
          isDismissible: true,
          forwardAnimationCurve: Curves.easeOutQuint,
          reverseAnimationCurve: Curves.easeInQuint,
        ),
      );

      Future.delayed(const Duration(seconds: 2), () {
        // Get.offAllNamed('/login');
      });
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ForgotHeader(),

            ResetForm(
              formKey: _formKey,
              emailController: _emailController,
              validateEmail: _validateEmail,
              onSubmit: _submitForm,
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotHeader extends StatelessWidget {
  const ForgotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16.0),
          child: IconButton(
            icon: const Icon(CupertinoIcons.back, color: Colors.black),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        const SizedBox(height: 42),
        Center(
          child: Image.asset(
            'assets/images/lock_icon.png',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 32),
        const Center(
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 18),
      ],
    );
  }
}

class ResetForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final String? Function(String?) validateEmail;
  final VoidCallback onSubmit;

  const ResetForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.validateEmail,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 0, bottom: 24, left: 24, right: 24),
      decoration: const BoxDecoration(color: Colors.white),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Text(
                'Enter your email to receive a password reset link.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 30),

            ForgotActions(
              emailController: emailController,
              validateEmail: validateEmail,
              onSubmit: onSubmit,
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotActions extends StatelessWidget {
  final TextEditingController emailController;
  final String? Function(String?) validateEmail;
  final VoidCallback onSubmit;

  const ForgotActions({
    super.key,
    required this.emailController,
    required this.validateEmail,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              floatingLabelStyle: TextStyle(color: AppColors.primary),
              prefixIcon: const Icon(Icons.email_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.primary),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 16,
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
          ),
          const SizedBox(height: 18),
          // PrimaryButton(
          //   text: 'Reset Password',
          //   onPressed: onSubmit,
          //   backgroundColor: AppColors.kBlue,
          //   textColor: Colors.white,
          //   borderRadius: 12.0,
          //   height: 46.0,
          // ),
        ],
      ),
    );
  }
}
