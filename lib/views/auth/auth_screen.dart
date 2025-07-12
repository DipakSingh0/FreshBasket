// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:grocery/controllers/auth_controller.dart';
// // import 'package:grocery/views/auth/auth_form.dart';
// // import 'package:grocery/views/auth/auth_social_buttons.dart';

// // class AuthScreen extends StatelessWidget {
// //   AuthScreen({super.key});

// //   final _formKey = GlobalKey<FormState>();
// //   final _emailController = TextEditingController();
// //   final _passwordController = TextEditingController();
// //   final _confirmPasswordController = TextEditingController();

// //   @override
// //   Widget build(BuildContext context) {
// //     // final AuthController authController = Get.find();

// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.all(24),
// //         child: Column(
// //           children: [
// //             const SizedBox(height: 60),
// //             const AuthHeader(),
// //             const SizedBox(height: 32),
// //             Container(
// //               padding: const EdgeInsets.all(20),
// //               decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 borderRadius: BorderRadius.circular(24),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.black12,
// //                     blurRadius: 10,
// //                     offset: Offset(0, 5),
// //                   ),
// //                 ],
// //               ),
// //               child: Column(
// //                 children: [
// //                   const AuthTabBar(),
// //                   const SizedBox(height: 20),
// //                   AuthForm(
// //                     formKey: _formKey,
// //                     emailController: _emailController,
// //                     passwordController: _passwordController,
// //                     confirmPasswordController: _confirmPasswordController,
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             const SizedBox(height: 24),
// //             const SocialButtons(),
// //             const SizedBox(height: 40),
// //             const AuthFooter(),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class AuthHeader extends StatelessWidget {
// //   const AuthHeader({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: const [
// //         Text(
// //           'Go ahead and set up\nyour account',
// //           textAlign: TextAlign.center,
// //           style: TextStyle(
// //             fontSize: 22,
// //             fontWeight: FontWeight.bold,
// //             color: Colors.black87,
// //           ),
// //         ),
// //         SizedBox(height: 8),
// //         Text(
// //           'Sign in to enjoy the best managing experience',
// //           textAlign: TextAlign.center,
// //           style: TextStyle(color: Colors.grey),
// //         ),
// //       ],
// //     );
// //   }
// // }

// // class AuthFooter extends StatelessWidget {
// //   const AuthFooter({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: const [
// //         Text(
// //           'Find us more',
// //           style: TextStyle(color: Colors.grey, fontSize: 14),
// //         ),
// //         SizedBox(height: 4),
// //         Text(
// //           'mbo.ahma@gmail.com',
// //           style: TextStyle(
// //             fontSize: 14,
// //             fontWeight: FontWeight.bold,
// //             color: Colors.black87,
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }

// // class AuthTabBar extends StatelessWidget {
// //   const AuthTabBar({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final authController = Get.find<AuthController>();

// //     return Obx(
// //       () => Row(
// //         children: [
// //           Expanded(
// //             child: ElevatedButton(
// //               onPressed: () => authController.isLoginView.value
// //                   ? null
// //                   : authController.toggleAuthView(),
// //               style: ElevatedButton.styleFrom(
// //                 elevation: 0,
// //                 backgroundColor: authController.isLoginView.value
// //                     ? Colors.green
// //                     : Colors.grey.shade200,
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(12),
// //                 ),
// //               ),
// //               child: const Text('Login'),
// //             ),
// //           ),
// //           const SizedBox(width: 10),
// //           Expanded(
// //             child: ElevatedButton(
// //               onPressed: () => authController.isLoginView.value
// //                   ? authController.toggleAuthView()
// //                   : null,
// //               style: ElevatedButton.styleFrom(
// //                 elevation: 0,
// //                 backgroundColor: !authController.isLoginView.value
// //                     ? Colors.green
// //                     : Colors.grey.shade200,
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(12),
// //                 ),
// //               ),
// //               child: const Text('Register'),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // views/auth_screen.dart
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:grocery/controllers/auth_controller.dart';

// class AuthScreen extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();

//   AuthScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final AuthController authController = Get.find();

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const SizedBox(height: 60),
//             Text(
//               'Go ahead and set up\nyour account',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Sign in to enjoy the best managing experience',
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.grey[600]),
//             ),
//             const SizedBox(height: 32),

//             // Card-like Container
//             Container(
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(24),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 10,
//                     offset: Offset(0, 5),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   // Tabs
//                   Obx(
//                     () => Row(
//                       children: [
//                         Expanded(
//                           child: ElevatedButton(
//                             onPressed: () {
//                               if (!authController.isLoginView.value) {
//                                 authController.toggleAuthView();
//                               }
//                             },
//                             style: ElevatedButton.styleFrom(
//                               elevation: 0,
//                               backgroundColor: authController.isLoginView.value
//                                   ? Colors.green
//                                   : Colors.grey.shade200,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                             ),
//                             child: Text('Login'),
//                           ),
//                         ),
//                         const SizedBox(width: 10),
//                         Expanded(
//                           child: ElevatedButton(
//                             onPressed: () {
//                               if (authController.isLoginView.value) {
//                                 authController.toggleAuthView();
//                               }
//                             },
//                             style: ElevatedButton.styleFrom(
//                               elevation: 0,
//                               backgroundColor: !authController.isLoginView.value
//                                   ? Colors.green
//                                   : Colors.grey.shade200,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                             ),
//                             child: Text('Register'),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   // Email Field
//                   TextFormField(
//                     controller: _emailController,
//                     decoration: InputDecoration(
//                       hintText: 'Email Address',
//                       prefixIcon: Icon(Icons.email),
//                       filled: true,
//                       fillColor: Colors.grey.shade100,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 16),

//                   // Password Field
//                   Obx(
//                     () => TextFormField(
//                       controller: _passwordController,
//                       obscureText: authController.obscurePassword.value,
//                       decoration: InputDecoration(
//                         hintText: 'Password',
//                         prefixIcon: Icon(Icons.lock),
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             authController.obscurePassword.value
//                                 ? Icons.visibility_off
//                                 : Icons.visibility,
//                           ),
//                           onPressed: () =>
//                               authController.togglePasswordVisibility(),
//                         ),
//                         filled: true,
//                         fillColor: Colors.grey.shade100,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                     ),
//                   ),

//                   // Confirm password (only on register)
//                   if (!authController.isLoginView.value) ...[
//                     const SizedBox(height: 16),
//                     Obx(
//                       () => TextFormField(
//                         controller: _confirmPasswordController,
//                         obscureText: authController.obscurePassword.value,
//                         decoration: InputDecoration(
//                           hintText: 'Confirm Password',
//                           prefixIcon: Icon(Icons.lock_outline),
//                           filled: true,
//                           fillColor: Colors.grey.shade100,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],

//                   const SizedBox(height: 16),

//                   // Remember me and Forgot password
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Checkbox(value: true, onChanged: (_) {}),
//                           const Text('Remember me'),
//                         ],
//                       ),
//                       TextButton(
//                         onPressed: () {},
//                         child: const Text(
//                           'Forgot Password?',
//                           style: TextStyle(color: Colors.green),
//                         ),
//                       ),
//                     ],
//                   ),

//                   const SizedBox(height: 16),

//                   // Login/Register Button
//                   Obx(
//                     () => SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.green,
//                           padding: const EdgeInsets.symmetric(vertical: 16),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         onPressed: () {
//                           if (_formKey.currentState!.validate()) {
//                             if (authController.isLoginView.value) {
//                               authController.login(
//                                 _emailController.text.trim(),
//                                 _passwordController.text.trim(),
//                               );
//                             } else {
//                               authController.register(
//                                 _emailController.text.trim(),
//                                 _passwordController.text.trim(),
//                               );
//                             }
//                           }
//                         },
//                         child: Text(
//                           authController.isLoginView.value
//                               ? 'Login'
//                               : 'Register',
//                           style: const TextStyle(
//                             fontSize: 16,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 24),

//             // OR divider
//             Row(
//               children: const [
//                 Expanded(child: Divider()),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 12),
//                   child: Text('Or login with'),
//                 ),
//                 Expanded(child: Divider()),
//               ],
//             ),

//             const SizedBox(height: 16),

//             // Social buttons (optional)
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset('assets/google.png', height: 40),
//                 const SizedBox(width: 20),
//                 Image.asset('assets/facebook.png', height: 40),
//               ],
//             ),

//             const SizedBox(height: 40),

//             // Footer
//             Text(
//               'Find us more',
//               style: TextStyle(color: Colors.grey[600], fontSize: 14),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               'mbo.ahma@gmail.com',
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _AuthTabButton extends StatelessWidget {
//   final String text;
//   final bool isActive;
//   final VoidCallback onTap;

//   const _AuthTabButton({
//     required this.text,
//     required this.isActive,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Column(
//         children: [
//           Text(
//             text,
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: isActive ? Colors.blue : Colors.grey,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Container(
//             height: 2,
//             width: 60,
//             color: isActive ? Colors.blue : Colors.transparent,
//           ),
//         ],
//       ),
//     );
//   }
// }
