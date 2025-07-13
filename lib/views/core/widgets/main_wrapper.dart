import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/controllers/bottom_nav_controller.dart';
import 'package:grocery/views/core/widgets/my_bottom_nav_bar.dart';

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
