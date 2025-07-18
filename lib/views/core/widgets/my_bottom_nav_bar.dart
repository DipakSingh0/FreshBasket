import 'package:grocery/imports.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BottomNavBarController>();

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60,
        width: 240, // Fixed width for compact design
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(35),
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
              _buildNavButton(Icons.home_outlined, Icons.home, 0, controller),
              _buildNavButton(
                Icons.search_outlined,
                Icons.search,
                1,
                controller,
              ),
              _buildNavButton(
                Icons.shopping_cart_outlined,
                Icons.shopping_cart,
                2,
                controller,
              ),
              _buildNavButton(
                Icons.person_outlined,
                Icons.person,
                3,
                controller,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavButton(
    IconData icon,
    IconData activeIcon,
    int index,
    BottomNavBarController controller,
  ) {
    final isActive = controller.currentIndex.value == index;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () => controller.changeTabIndex(index),
        child: Container(
          width: 40,
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: isActive ? Colors.red : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isActive ? activeIcon : icon,
                  size: 20,
                  color: isActive ? Colors.white : Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:grocery/imports.dart';

// class MyBottomNav extends StatelessWidget {
//   const MyBottomNav({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<BottomNavBarController>();

//     return Positioned(
//       bottom: 20,
//       left: 0,
//       right: 0,
//       child: Center(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           height: 70, // Increased height to accommodate circles
//           constraints: const BoxConstraints(maxWidth: 280),
//           decoration: BoxDecoration(
//             // color: const Color(0xFF222222),
//             color: AppColors.card,
//             borderRadius: BorderRadius.circular(32),
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
//                 _buildCircularNavButton(
//                   icon: Icons.home_outlined,
//                   activeIcon: Icons.home,
//                   label: 'Home',
//                   index: 0,
//                   isActive: controller.currentIndex.value == 0,
//                 ),
//                 _buildCircularNavButton(
//                   icon: Icons.search_outlined,
//                   activeIcon: Icons.search,
//                   label: 'Search',
//                   index: 1,
//                   isActive: controller.currentIndex.value == 1,
//                 ),
//                 _buildCircularNavButton(
//                   icon: Icons.shopping_cart_outlined,
//                   activeIcon: Icons.shopping_cart,
//                   label: 'Cart',
//                   index: 2,
//                   isActive: controller.currentIndex.value == 2,
//                 ),
//                 _buildCircularNavButton(
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

//   Widget _buildCircularNavButton({
//     required IconData icon,
//     required IconData activeIcon,
//     required String label,
//     required int index,
//     required bool isActive,
//   }) {
//     return Material(
//       color: Colors.transparent,
//       child: InkWell(
//         onTap: () => Get.find<BottomNavBarController>().changeTabIndex(index),
//         borderRadius: BorderRadius.circular(30),
//         child: Container(
//           width: 50,
//           padding: const EdgeInsets.symmetric(vertical: 6),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 width: 40,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   color: isActive ? Colors.red : Colors.transparent,
//                   shape: BoxShape.circle,
//                 ),
//                 child: Icon(
//                   isActive ? activeIcon : icon,
//                   size: 24,
//                   color: isActive ? Colors.white : Colors.grey[600],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
