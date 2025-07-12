import 'package:grocery/imports.dart';
import 'package:grocery/views/auth/login_screen.dart';
import 'package:grocery/views/auth/register_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: RouteName.splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    //  GetPage(
    //   name: RouteName.authView,
    //   page: () => AuthScreen(),
    //   binding: AuthBinding(),
    //   transition: Transition.leftToRight,
    //   transitionDuration: const Duration(milliseconds: 250),
    // ),
    GetPage(
      name: RouteName.loginView,
      page: () => LoginScreen(),
      binding: AuthBinding(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: RouteName.registerView,
      page: () => RegisterScreen(),
      binding: AuthBinding(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: RouteName.homePage,
      page: () => const HomePage(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    // Uncomment and implement these as you create the views
    /*
    GetPage(
      name: RouteName.registerView,
      page: () => const RegisterView(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: RouteName.forgetPasswordView,
      page: () => const ForgetPasswordView(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: RouteName.profileView,
      page: () => const ProfileView(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: RouteName.settingsView,
      page: () => const SettingsView(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    */
  ];
}
