import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/routes/app_pages.dart';
import 'package:grocery/routes/app_routes.dart';

void main() {
  // dont need this because we are using Get.lazyPut in AuthBinding
  // Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Grocery App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RouteName.splashScreen,
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
