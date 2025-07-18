import 'package:grocery/imports.dart';
import 'package:grocery/routes/app_routes.dart';
import 'package:grocery/services/translation.dart';
import 'package:grocery/themes/theme_service.dart';

void main() async {
  await GetStorage.init();
  Get.put(ThemeService());
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
      // ---seting default language to english
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      // theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

      // themeMode: ThemeService().theme,  // -- will create a new instance of ThemeService
      themeMode:
          Get.find<ThemeService>().theme, // -- find existing theme instance
      initialRoute: RouteName.splashScreen,
      getPages: AppRoutes.routes,
      initialBinding: BottomNavBinding(),
    );
  }
}
