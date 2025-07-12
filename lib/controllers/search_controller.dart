import 'package:grocery/imports.dart';
import 'package:grocery/repository/product_repository.dart';

class ProductSearchController extends GetxController {
  final ProductRepository _productRepository = ProductRepository();
  final RxString searchText = ''.obs;
  final TextEditingController textEditingController = TextEditingController();
  final RxList<Product> searchResults = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    searchResults.assignAll(_productRepository.getAllProducts());
    textEditingController.addListener(_performSearch);
  }

  void _performSearch() {
    final query = textEditingController.text.toLowerCase();
    if (query.isEmpty) {
      searchResults.assignAll(_productRepository.getAllProducts());
    } else {
      searchResults.assignAll(
        _productRepository
            .getAllProducts()
            .where((product) => product.name.toLowerCase().contains(query))
            .toList(),
      );
    }
  }

  void clearSearch() {
    textEditingController.clear();
    searchText.value = '';
    searchResults.assignAll(_productRepository.getAllProducts());
  }

  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }
}
