import 'package:grocery/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the binding
    SearchBinding().dependencies();

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(),
            const SearchBarWidget(),
            const SizedBox(height: 16),
            Expanded(
              child: Obx(() {
                final controller = Get.find<ProductSearchController>();
                if (controller.searchText.isEmpty) {
                  return const CategoryTabs();
                } else {
                  return GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.75,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                        ),
                    itemCount: controller.searchResults.length,
                    itemBuilder: (context, index) =>
                        ProductCard(product: controller.searchResults[index]),
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:grocery/imports.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     SearchBinding().dependencies();

//     return Scaffold(
//       backgroundColor: const Color(0xFF121212),
//       body: SafeArea(
//         child: Column(
//           children: [
//             const HeaderWidget(),
//             const SearchBarWidget(),
//             const SizedBox(height: 16),
//             Expanded(
//               child: Obx(() {
//                 final controller = Get.find<ProductSearchController>();
//                 if (controller.searchText.isEmpty) {
//                   return const SingleChildScrollView(
//                     physics: AlwaysScrollableScrollPhysics(),
//                     // Add scrolling for categories
//                     child: CategoryTabs(),
//                   );
//                 } else {
//                   return GridView.builder(
//                     physics: const AlwaysScrollableScrollPhysics(),
//                     padding: const EdgeInsets.all(16),
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                           childAspectRatio: 0.75,
//                           mainAxisSpacing: 16,
//                           crossAxisSpacing: 16,
//                         ),
//                     itemCount: controller.searchResults.length,
//                     itemBuilder: (context, index) =>
//                         ProductCard(product: controller.searchResults[index]),
//                   );
//                 }
//               }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
