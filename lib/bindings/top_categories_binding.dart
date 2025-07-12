import 'package:get/get.dart';
import 'package:grocery/controllers/categories_controller.dart';

class TopCategoriesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopCategoriesController());
  }
}
