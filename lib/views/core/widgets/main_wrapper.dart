import 'package:grocery/imports.dart';

// class MainWrapper extends StatelessWidget {
//   const MainWrapper({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true, // Crucial for proper layout
//       body: Obx(() {
//         final controller = Get.find<BottomNavBarController>();
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 80), // Space for navbar
//           child: controller.pages[controller.currentIndex.value],
//         );
//       }),
//       bottomNavigationBar: const MyBottomNav(),
//     );
//   }
// }

class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Obx(() {
          final controller = Get.find<BottomNavBarController>();
          return controller.pages[controller.currentIndex.value];
        }),
      ),
      floatingActionButton: MyBottomNav(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // // bottomNavigationBar: const MyBottomNav(),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.only(bottom: 10),
      //   child: MyBottomNav(),
      // ),
    );
  }
}
