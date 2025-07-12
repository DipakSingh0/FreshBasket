// category_tabs.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/controllers/categories_controller.dart';
import 'package:grocery/imports.dart';
import 'package:grocery/views/core/home/widgets/product_card.dart';

class CategoryTabs extends StatefulWidget {
  const CategoryTabs({super.key});

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  int _selectedIndex = 0;
  final List<String> categories = ['Vegetables', 'Alcohol', 'Fruits'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custom Tab Bar
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: categories.map((category) {
              final index = categories.indexOf(category);
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CategoryTabButtons(
                  text: category,
                  isSelected: _selectedIndex == index,
                  onTap: () => setState(() => _selectedIndex = index),
                ),
              );
            }).toList(),
          ),
        ),

        // Content Area
        Expanded(
          child: IndexedStack(
            index: _selectedIndex,
            children: categories.map((category) {
              return _buildCategoryView(category);
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryView(String category) {
    final products = Get.find<TopCategoriesController>().getProductsByCategory(
      category,
    );

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) => ProductCard(product: products[index]),
    );
  }
}

class CategoryTabButtons extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryTabButtons({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected
                ? AppColors.primary
                : Colors.grey.withOpacity(0.5),
            width: 1,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
