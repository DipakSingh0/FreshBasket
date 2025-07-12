// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:grocery/controllers/auth_controller.dart';

// class AuthForm extends StatelessWidget {
//   final GlobalKey<FormState> formKey;
//   final TextEditingController emailController;
//   final TextEditingController passwordController;
//   final TextEditingController confirmPasswordController;

//   const AuthForm({
//     super.key,
//     required this.formKey,
//     required this.emailController,
//     required this.passwordController,
//     required this.confirmPasswordController,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final authController = Get.find<AuthController>();

//     return Form(
//       key: formKey,
//       child: Column(
//         children: [
//           TextFormField(
//             controller: emailController,
//             decoration: InputDecoration(
//               hintText: 'Email Address',
//               prefixIcon: const Icon(Icons.email),
//               filled: true,
//               fillColor: Colors.grey.shade100,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           Obx(
//             () => TextFormField(
//               controller: passwordController,
//               obscureText: authController.obscurePassword.value,
//               decoration: InputDecoration(
//                 hintText: 'Password',
//                 prefixIcon: const Icon(Icons.lock),
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     authController.obscurePassword.value
//                         ? Icons.visibility_off
//                         : Icons.visibility,
//                   ),
//                   onPressed: () => authController.togglePasswordVisibility(),
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey.shade100,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//             ),
//           ),
//           if (!authController.isLoginView.value) ...[
//             const SizedBox(height: 16),
//             Obx(
//               () => TextFormField(
//                 controller: confirmPasswordController,
//                 obscureText: authController.obscurePassword.value,
//                 decoration: InputDecoration(
//                   hintText: 'Confirm Password',
//                   prefixIcon: const Icon(Icons.lock_outline),
//                   filled: true,
//                   fillColor: Colors.grey.shade100,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//           const SizedBox(height: 16),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Checkbox(value: true, onChanged: (_) {}),
//                   const Text('Remember me'),
//                 ],
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'Forgot Password?',
//                   style: TextStyle(color: Colors.green),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 16),
//           Obx(
//             () => SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 onPressed: () {
//                   if (formKey.currentState!.validate()) {
//                     if (authController.isLoginView.value) {
//                       authController.login(
//                         emailController.text.trim(),
//                         passwordController.text.trim(),
//                       );
//                     } else {
//                       authController.register(
//                         emailController.text.trim(),
//                         passwordController.text.trim(),
//                       );
//                     }
//                   }
//                 },
//                 child: Text(
//                   authController.isLoginView.value ? 'Login' : 'Register',
//                   style: const TextStyle(fontSize: 16, color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
