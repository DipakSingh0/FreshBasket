import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/controllers/bottom_nav_controller.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BottomNavBarController>();

    return Positioned(
      bottom: 20, // 20px from bottom
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          height: 60,
          constraints: const BoxConstraints(maxWidth: 280),
          decoration: BoxDecoration(
            color: const Color(0xFF222222),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavButton(
                  icon: Icons.home_outlined,
                  activeIcon: Icons.home,
                  label: 'Home',
                  index: 0,
                  isActive: controller.currentIndex.value == 0,
                ),
                _buildNavButton(
                  icon: Icons.search_outlined,
                  activeIcon: Icons.search,
                  label: 'Search',
                  index: 1,
                  isActive: controller.currentIndex.value == 1,
                ),
                _buildNavButton(
                  icon: Icons.shopping_cart_outlined,
                  activeIcon: Icons.shopping_cart,
                  label: 'Cart',
                  index: 2,
                  isActive: controller.currentIndex.value == 2,
                ),
                _buildNavButton(
                  icon: Icons.person_outlined,
                  activeIcon: Icons.person,
                  label: 'Profile',
                  index: 3,
                  isActive: controller.currentIndex.value == 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavButton({
    required IconData icon,
    required IconData activeIcon,
    required String label,
    required int index,
    required bool isActive,
  }) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Get.find<BottomNavBarController>().changeTabIndex(index),
          borderRadius: BorderRadius.circular(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (child, animation) =>
                    ScaleTransition(scale: animation, child: child),
                child: Icon(
                  isActive ? activeIcon : icon,
                  key: ValueKey(isActive ? 'active_$index' : 'inactive_$index'),
                  size: 24,
                  color: isActive ? Colors.red : Colors.grey[600],
                ),
              ),
              const SizedBox(height: 2),
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  color: isActive ? Colors.red : Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:grocery/controllers/bottom_nav_controller.dart';

// class MyBottomNav extends StatelessWidget {
//   const MyBottomNav({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<BottomNavBarController>();

//     return Container(
//       margin: const EdgeInsets.only(bottom: 20),
//       child: Center(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           height: 60,
//           constraints: const BoxConstraints(maxWidth: 280),
//           decoration: BoxDecoration(
//             color: Colors.white, // White background
//             borderRadius: BorderRadius.circular(30),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.15),
//                 blurRadius: 12,
//                 offset: const Offset(0, 4),
//               ),
//             ],
//           ),
//           child: Obx(
//             () => Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 _buildNavButton(
//                   icon: Icons.home_outlined,
//                   activeIcon: Icons.home,
//                   label: 'Home',
//                   index: 0,
//                   isActive: controller.currentIndex.value == 0,
//                 ),
//                 _buildNavButton(
//                   icon: Icons.search_outlined,
//                   activeIcon: Icons.search,
//                   label: 'Search',
//                   index: 1,
//                   isActive: controller.currentIndex.value == 1,
//                 ),
//                 _buildNavButton(
//                   icon: Icons.shopping_cart_outlined,
//                   activeIcon: Icons.shopping_cart,
//                   label: 'Cart',
//                   index: 2,
//                   isActive: controller.currentIndex.value == 2,
//                 ),
//                 _buildNavButton(
//                   icon: Icons.person_outlined,
//                   activeIcon: Icons.person,
//                   label: 'Profile',
//                   index: 3,
//                   isActive: controller.currentIndex.value == 3,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildNavButton({
//     required IconData icon,
//     required IconData activeIcon,
//     required String label,
//     required int index,
//     required bool isActive,
//   }) {
//     return Expanded(
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           onTap: () => Get.find<BottomNavBarController>().changeTabIndex(index),
//           borderRadius: BorderRadius.circular(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               AnimatedSwitcher(
//                 duration: const Duration(milliseconds: 200),
//                 transitionBuilder: (child, animation) =>
//                     ScaleTransition(scale: animation, child: child),
//                 child: Icon(
//                   isActive ? activeIcon : icon,
//                   key: ValueKey(isActive ? 'active_$index' : 'inactive_$index'),
//                   size: 24,
//                   color: isActive ? Colors.red : Colors.grey[600],
//                 ),
//               ),
//               const SizedBox(height: 2),
//               Text(
//                 label,
//                 style: TextStyle(
//                   fontSize: 10,
//                   color: isActive ? Colors.red : Colors.grey[600],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
