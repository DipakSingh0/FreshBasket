import 'package:grocery/imports.dart';

class TopCategoriesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopCategoriesController());
  }
}
