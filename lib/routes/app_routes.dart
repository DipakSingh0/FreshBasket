import 'package:grocery/imports.dart';

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
      name: RouteName.forgotPassword,
      page: () => const ForgotPassword(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: RouteName.otpScreen,
      page: () => OtpScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: RouteName.homePage,
      page: () => const HomePage(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: RouteName.mainWrapper,
      page: () => const MainWrapper(),
      binding: BottomNavBinding(),
    ),
    // GetPage(
    //   name: RouteName.cartPage,
    //   page: () => const CartPage(),
    //   binding: BottomNavBinding(),
    //   transition: Transition.leftToRight,
    //   transitionDuration: const Duration(milliseconds: 250),
    // ),
    GetPage(
      name: RouteName.settingsView,
      page: () => SettingsPage(),
      binding: BottomNavBinding(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 250),
    ),

    /*
    GetPage(
      name: RouteName.registerView,
      page: () => const RegisterView(),
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
