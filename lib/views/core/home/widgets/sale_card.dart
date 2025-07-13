// import 'package:flutter/material.dart';
// import 'package:grocery/models/product_model.dart';
// import 'package:grocery/imports.dart';

// class SaleProductCard extends StatelessWidget {
//   final Product product;
//   final double discountPercent;
//   final VoidCallback? onTap;
//   final VoidCallback? onAddToCart;

//   const SaleProductCard({
//     super.key,
//     required this.product,
//     this.discountPercent = 20.0,
//     this.onTap,
//     this.onAddToCart,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final discountedPrice = product.price * (1 - discountPercent / 100);

//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 160,
//         margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//         decoration: BoxDecoration(
//           color: const Color(0xFF222222),
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               spreadRadius: 1,
//               blurRadius: 5,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Stack(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Product Name
//                 Padding(
//                   padding: const EdgeInsets.only(top: 12, left: 22, right: 12),
//                   child: Text(
//                     product.name,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                       height: 1.2,
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 const SizedBox(height: 8),

//                 // Product Image
//                 Container(
//                   height: 180,
//                   margin: const EdgeInsets.symmetric(horizontal: 12),
//                   decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.vertical(
//                       top: Radius.circular(16),
//                       bottom: Radius.circular(16),
//                     ),
//                     color: AppColors.card,
//                   ),
//                   alignment: Alignment.center,
//                   child: Stack(
//                     children: [
//                       Align(
//                         alignment: Alignment.center,
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Image.asset(
//                             product.image,
//                             height: 350,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 // Product Details with Prices and Button
//                 Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       // Prices Column
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Rs ${discountedPrice.toStringAsFixed(1)}',
//                             style: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           Text(
//                             'Rs ${product.price.toStringAsFixed(1)}',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.grey[400],
//                               decoration: TextDecoration.lineThrough,
//                             ),
//                           ),
//                         ],
//                       ),

//                       // Add to Cart Button
//                       InkWell(
//                         onTap: onAddToCart,
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 12,
//                             vertical: 8,
//                           ),
//                           decoration: BoxDecoration(
//                             color: AppColors.primary,
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: const Text(
//                             'Add to cart',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),

//             // Discount Badge
//             Positioned(
//               top: 42,
//               right: 12,
//               child: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Text(
//                   '${discountPercent.toInt()}% OFF',
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 12,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
