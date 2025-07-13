// ignore_for_file: avoid_print

import 'package:grocery/models/product_model.dart';
import 'package:grocery/utils/image_utils.dart';

class ProductRepository {
  final List<Product> _products = [
    Product(
      id: '1',
      name: 'Fresh Strawberries',
      description: 'Sweet and juicy organic strawberries',
      price: 120.0,
      image: ImageAssets.apple,
      category: 'Fruits',
      unit: '250g pack',
    ),
    Product(
      id: '2',
      name: 'Carrot',
      description: 'Fresh organic carrots',
      price: 60.0,
      image: ImageAssets.carrot,
      category: 'Vegetables',
      unit: 'kg',
    ),
    Product(
      id: '3',
      name: 'Beetroot',
      description: 'Fresh organic beetroot',
      price: 45.0,
      image: ImageAssets.beetroot,
      category: 'Vegetables',
      unit: 'kg',
    ),
    Product(
      id: '4',
      name: 'Brinjal',
      description: 'Fresh organic brinjal',
      price: 35.0,
      image: ImageAssets.brinjal,
      category: 'Vegetables',
      unit: 'kg',
    ),
    Product(
      id: '5',
      name: 'Cabbage',
      description: 'Fresh organic cabbage',
      price: 30.0,
      image: ImageAssets.cabbage,
      category: 'Vegetables',
      unit: 'kg',
    ),
    Product(
      id: '6',
      name: 'Capsicum',
      description: 'Fresh organic capsicum',
      price: 80.0,
      image: ImageAssets.capsicum,
      category: 'Vegetables',
      unit: 'kg',
    ),
    Product(
      id: '7',
      name: 'Cauliflower',
      description: 'Fresh organic cauliflower',
      price: 40.0,
      image: ImageAssets.cauliflower,
      category: 'Vegetables',
      unit: 'piece',
    ),
    Product(
      id: '8',
      name: 'Chillie',
      description: 'Fresh organic green chillies',
      price: 25.0,
      image: ImageAssets.chillie,
      category: 'Vegetables',
      unit: '100g pack',
    ),
    Product(
      id: '9',
      name: 'Kiwi',
      description: 'Fresh imported kiwi fruit',
      price: 150.0,
      image: ImageAssets.kiwi,
      category: 'Fruits',
      unit: 'piece',
    ),
    Product(
      id: '10',
      name: 'Garlic (Lasun)',
      description: 'Fresh organic garlic',
      price: 120.0,
      image: ImageAssets.lasun,
      category: 'Vegetables',
      unit: '250g pack',
    ),
    Product(
      id: '11',
      name: 'Onion',
      description: 'Fresh organic onions',
      price: 30.0,
      image: ImageAssets.onion,
      category: 'Vegetables',
      unit: 'kg',
    ),
    Product(
      id: '12',
      name: 'Peas',
      description: 'Fresh green peas',
      price: 90.0,
      image: ImageAssets.peas,
      category: 'Vegetables',
      unit: '250g pack',
    ),
    Product(
      id: '13',
      name: 'Potato',
      description: 'Fresh organic potatoes',
      price: 25.0,
      image: ImageAssets.potato,
      category: 'Vegetables',
      unit: 'kg',
    ),
    Product(
      id: '14',
      name: 'Turnip',
      description: 'Fresh organic turnips',
      price: 35.0,
      image: ImageAssets.turnip,
      category: 'Vegetables',
      unit: 'kg',
    ),
    Product(
      id: '15',
      name: 'Apple',
      description: 'Fresh red apples',
      price: 180.0,
      image: ImageAssets.apple,
      category: 'Fruits',
      unit: 'kg',
    ),
    Product(
      id: '16',
      name: 'Orange',
      description: 'Fresh juicy oranges',
      price: 100.0,
      image: ImageAssets.orange,
      category: 'Fruits',
      unit: 'kg',
    ),
    Product(
      id: '17',
      name: 'Grapes',
      description: 'Fresh black grapes',
      price: 120.0,
      image: ImageAssets.grape,
      category: 'Fruits',
      unit: '250g pack',
    ),
    Product(
      id: '18',
      name: 'Jackfruit',
      description: 'Fresh jackfruit pieces',
      price: 80.0,
      image: ImageAssets.jackfruit,
      category: 'Fruits',
      unit: '250g pack',
    ),
    Product(
      id: '19',
      name: 'Banana',
      description: 'Fresh ripe bananas',
      price: 50.0,
      image: ImageAssets.banana,
      category: 'Fruits',
      unit: 'dozen',
    ),
    Product(
      id: '20',
      name: 'Mango',
      description: 'Fresh alphonso mangoes',
      price: 200.0,
      image: ImageAssets.mango,
      category: 'Fruits',
      unit: 'kg',
    ),
    Product(
      id: '21',
      name: 'Papaya',
      description: 'Fresh ripe papaya',
      price: 40.0,
      image: ImageAssets.papaya,
      category: 'Fruits',
      unit: 'kg',
    ),
    Product(
      id: '22',
      name: 'Pomegranate',
      description: 'Fresh pomegranates',
      price: 140.0,
      image: ImageAssets.pomegranate,
      category: 'Fruits',
      unit: 'kg',
    ),
    Product(
      id: '23',
      name: 'Watermelon',
      description: 'Fresh juicy watermelon',
      price: 50.0,
      image: ImageAssets.watermelon,
      category: 'Fruits',
      unit: 'kg',
    ),
    Product(
      id: '24',
      name: 'Premium Coffee',
      description: 'Arabica whole beans - Limited offer',
      price: 199.0, // Original price: 299.0
      image: ImageAssets.coffee,
      category: 'Groceries',
      unit: '200g pack',
    ),
    Product(
      id: '25',
      name: 'Organic Honey',
      description: 'Pure forest honey - Special discount',
      price: 149.0, // Original price: 199.0
      image: ImageAssets.honey,
      category: 'Groceries',

      unit: '500g jar',
    ),
    Product(
      id: '26',
      name: 'Protein Bars',
      description: 'Low sugar high protein - Bundle offer',
      price: 99.0, // Original price: 150.0
      image: ImageAssets.proteinBar,
      category: 'Groceries',

      unit: '5 bars',
    ),
    Product(
      id: '27',
      name: 'Dairy Milk Chocolate',
      description: 'Smooth and creamy chocolate - Buy 1 Get 1 Free',
      price: 89.0, // Original price: 99.0
      image: ImageAssets.dairymilk,
      category: 'Groceries',

      unit: '200g pack',
    ),
  ];

  // Get all products
  List<Product> getAllProducts() {
    return _products;
  }

  // Get products by category
  List<Product> getProductsByCategory(String category) {
    return _products.where((product) => product.category == category).toList();
  }

  // Get product by ID
  Product? getProductById(String id) {
    try {
      return _products.firstWhere((product) => product.id == id);
    } catch (e) {
      print('Product with ID $id not found: $e');
      return null;
    }
  }

  List<Product> searchProducts(String query) {
    if (query.isEmpty) return _products;
    return _products
        .where(
          (product) => product.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }
}
