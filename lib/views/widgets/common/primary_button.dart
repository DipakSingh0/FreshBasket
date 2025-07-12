// lib/widgets/primary_button.dart

import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool isLoading;
  final Color backgroundColor;
  final double borderRadius;
  final double verticalPadding;
  final TextStyle? textStyle;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.backgroundColor = const Color(0xFF4CAF50),
    this.borderRadius = 10,
    this.verticalPadding = 16,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(vertical: verticalPadding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: isLoading
            ? const CircularProgressIndicator(color: Colors.white)
            : Text(
                text,
                style:
                    textStyle ??
                    const TextStyle(fontSize: 18, color: Colors.white),
              ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class SocialButtons extends StatelessWidget {
//   const SocialButtons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: const [
//             Expanded(child: Divider()),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 12),
//               child: Text('Or login with'),
//             ),
//             Expanded(child: Divider()),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset('assets/icons/google.png', height: 40),
//             const SizedBox(width: 20),
//             Image.asset('assets/icons/facebook.png', height: 40),
//           ],
//         ),
//       ],
//     );
//   }
// }
