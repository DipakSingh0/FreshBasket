import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      // Use Center or other layout for its content
      child: Text(
        'This is the Search Tab Content',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:grocery/controllers/bottom_nav_controller.dart'; // Import your controller

// class CustomBottomNavBar extends StatelessWidget {
//   const CustomBottomNavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Get an instance of your BottomNavController
//     final BottomNavController controller = Get.find<BottomNavController>();

//     return Obx(
//       () => Container(
//         height: 70, // Adjust height as needed
//         decoration: BoxDecoration(
//           color: const Color(
//             0xFF222222,
//           ), // Dark background color from your image
//           borderRadius: BorderRadius.circular(30), // Rounded pill shape
//         ),
//         margin: const EdgeInsets.symmetric(
//           horizontal: 20,
//           vertical: 10,
//         ), // Margin from edges
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             _buildNavItem(
//               icon: Icons.home_outlined, // Outline icon for unselected
//               selectedIcon: Icons.home_rounded, // Filled icon for selected
//               index: 0,
//               controller: controller,
//             ),
//             _buildNavItem(
//               icon: Icons.search_outlined,
//               selectedIcon: Icons.search_rounded,
//               index: 1,
//               controller: controller,
//             ),
//             _buildNavItem(
//               icon: Icons.shopping_cart_outlined,
//               selectedIcon: Icons.shopping_cart_rounded,
//               index: 2,
//               controller: controller,
//             ),
//             _buildNavItem(
//               icon: Icons.person_outline,
//               selectedIcon: Icons.person_rounded,
//               index: 3,
//               controller: controller,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNavItem({
//     required IconData icon,
//     required IconData selectedIcon,
//     required int index,
//     required BottomNavController controller,
//   }) {
//     final bool isSelected = controller.selectedIndex == index;

//     return GestureDetector(
//       onTap: () => controller.changePage(index),
//       child: Container(
//         width: 50, // Icon container width
//         height: 50, // Icon container height
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: isSelected
//               ? const Color(0xFFE53E3E)
//               : Colors.transparent, // Red for selected
//         ),
//         child: Icon(
//           isSelected ? selectedIcon : icon,
//           color: Colors.white, // White icon color
//           size: 28,
//         ),
//       ),
//     );
//   }
// }
