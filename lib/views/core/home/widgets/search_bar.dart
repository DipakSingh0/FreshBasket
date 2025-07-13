import 'package:grocery/controllers/search_controller.dart';
import 'package:grocery/imports.dart';

// search_bar_widget.dart

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductSearchController>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFF2A2A2A),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Obx(
                () => TextField(
                  controller: controller.textEditingController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'search'.tr,
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    suffixIcon: controller.searchText.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.close, color: Colors.grey),
                            onPressed: controller.clearSearch,
                          )
                        : null,
                  ),
                  onChanged: (value) => controller.searchText.value = value,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              // Handle filter tap
              // Get.toNamed(RouteName.filters);
            },
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFE53E3E),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.tune, color: Colors.white, size: 20),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              // Handle menu tap
              Get.bottomSheet(
                Container(
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.settings),
                        title: const Text('Settings'),
                        onTap: () {
                          // Get.toNamed(RouteName.settings);
                          Get.back();
                        },
                      ),
                      // Add more menu items
                    ],
                  ),
                ),
              );
            },
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFE53E3E),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.menu, color: Colors.white, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}

// class SearchBarWidget extends StatelessWidget {
//   const SearchBarWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(SearchController());

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//               height: 48,
//               decoration: BoxDecoration(
//                 color: const Color(0xFF2A2A2A),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Obx(
//                 () => TextField(
//                   controller: controller.searchController,
//                   style: const TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                     hintText: 'search'.tr,
//                     hintStyle: const TextStyle(color: Colors.grey),
//                     prefixIcon: const Icon(Icons.search, color: Colors.grey),
//                     border: InputBorder.none,
//                     contentPadding: const EdgeInsets.symmetric(vertical: 12),
//                     suffixIcon: controller.searchText.isNotEmpty
//                         ? IconButton(
//                             icon: const Icon(Icons.close, color: Colors.grey),
//                             onPressed: controller.clearSearch,
//                           )
//                         : null,
//                   ),
//                   onChanged: controller.onSearch,
//                   onSubmitted: controller.onSearch,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 12),
//           GestureDetector(
//             onTap: () {
//               // Handle filter tap
//               // Get.toNamed(RouteName.filters);
//             },
//             child: Container(
//               width: 48,
//               height: 48,
//               decoration: BoxDecoration(
//                 color: const Color(0xFFE53E3E),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: const Icon(Icons.tune, color: Colors.white, size: 20),
//             ),
//           ),
//           const SizedBox(width: 8),
//           GestureDetector(
//             onTap: () {
//               // Handle menu tap
//               Get.bottomSheet(
//                 Container(
//                   height: 200,
//                   color: Colors.white,
//                   child: Column(
//                     children: [
//                       ListTile(
//                         leading: const Icon(Icons.settings),
//                         title: const Text('Settings'),
//                         onTap: () {
//                           // Get.toNamed(RouteName.settings);
//                           Get.back();
//                         },
//                       ),
//                       // Add more menu items
//                     ],
//                   ),
//                 ),
//               );
//             },
//             child: Container(
//               width: 48,
//               height: 48,
//               decoration: BoxDecoration(
//                 color: const Color(0xFFE53E3E),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: const Icon(Icons.menu, color: Colors.white, size: 20),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
