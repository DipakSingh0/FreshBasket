// import 'package:grocery/imports.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final BottomNavController navController = Get.put(BottomNavController());

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: PageView(
//         controller: navController.pageController,
//         onPageChanged: (index) {
//           navController.changePage(index);
//         },
//         physics: const NeverScrollableScrollPhysics(),
//         children: const [HomePage(), SearchPage(), CartPage(), ProfilePage()],
//       ),
//       bottomNavigationBar: const CustomBottomNavBar(),
//     );
//   }
// }
