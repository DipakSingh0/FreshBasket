// search_binding.dart
import 'package:get/get.dart';
import 'package:grocery/controllers/search_controller.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductSearchController());
  }
}
