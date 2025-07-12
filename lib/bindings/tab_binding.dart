// tab_binding.dart
import 'package:get/get.dart';
import 'package:grocery/controllers/categories_controller.dart';

class TabBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopCategoriesController());
  }
}
