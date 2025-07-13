import 'package:grocery/bindings/bottom_nav_bar_binding.dart';
import 'package:grocery/imports.dart';
import 'package:grocery/views/core/settings_page.dart';

class BottomNavBarController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final PageStorageBucket bucket = PageStorageBucket();

  BottomNavBarController() {
    // Ensure SettingsController is registered
    BottomNavBinding().dependencies();
  }

  final List<Widget> pages = [
    const HomePage(key: PageStorageKey('HomePage')),
    const SearchPage(key: PageStorageKey('SearchPage')),
    const CartPage(key: PageStorageKey('CartPage')),
    // const ProfilePage(key: PageStorageKey('ProfilePage')),
    const SettingsPage(key: PageStorageKey('SettingsPage')),
  ];

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}
