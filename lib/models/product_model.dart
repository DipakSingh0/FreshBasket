class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double? rating;
  final String image;
  final String category;
  final String unit;
  final bool isOnSale;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.rating,
    required this.image,
    required this.category,
    required this.unit,
    this.isOnSale = false,
  });

  // Factory method to create a Product from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      rating: json['rating'].toDouble(),
      image: json['image'],
      category: json['category'],
      unit: json['unit'],
    );
  }

  // Convert Product to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'rating': rating,
      'image': image,
      'category': category,
      'unit': unit,
    };
  }
}
