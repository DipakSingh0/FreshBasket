import 'package:grocery/imports.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductSearchController());
  }
}
