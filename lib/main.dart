import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/controllers/categories_controller.dart';
import 'package:grocery/routes/app_pages.dart';
import 'package:grocery/routes/app_routes.dart';
import 'package:grocery/services/translation.dart';

// void main() async {
//   await GetStorage.init();
//   Get.put(CartService());
//   runApp(const MyApp());
// }
void main() {
  // dont need this because we are using Get.lazyPut in AuthBinding
  Get.put(TopCategoriesController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Grocery App',
      translations: AppTranslations(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
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
