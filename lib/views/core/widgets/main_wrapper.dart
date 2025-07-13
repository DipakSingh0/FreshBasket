import 'package:grocery/imports.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content (changes based on nav selection)
          Obx(() {
            final controller = Get.find<BottomNavBarController>();
            return controller.pages[controller.currentIndex.value];
          }),

          // Floating nav bar
          const MyBottomNav(),
        ],
      ),
    );
  }
}
