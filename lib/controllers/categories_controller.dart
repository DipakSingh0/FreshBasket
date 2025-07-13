import 'package:flutter/material.dart' hide SearchController;
import 'package:get/get.dart';
import 'package:grocery/models/product_model.dart';
import 'package:grocery/repository/product_repository.dart';

class TopCategoriesController extends GetxController {
  final ProductRepository productRepository = ProductRepository();
  late TabController tabController;
  final RxInt currentIndex = 0.obs;

  void initialize(TickerProvider vsync) {
    tabController = TabController(
      length: 3,
      vsync: vsync,
      initialIndex: currentIndex.value,
    );
    tabController.addListener(() {
      currentIndex.value = tabController.index;
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  List<Product> getProductsByCategory(String category) {
    return productRepository.getProductsByCategory(category);
  }

  List<Product> getAllProducts() {
    return productRepository.getAllProducts();
  }
}
