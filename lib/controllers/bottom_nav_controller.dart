import 'package:grocery/imports.dart';

class BottomNavBarController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final PageStorageBucket bucket = PageStorageBucket();

  final List<Widget> pages = [
    const HomePage(key: PageStorageKey('HomePage')),
    const SearchPage(key: PageStorageKey('SearchPage')),
    const CartPage(key: PageStorageKey('CartPage')),
    const ProfilePage(key: PageStorageKey('ProfilePage')),
  ];

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}
