// import 'package:flutter/material.dart';
import 'package:grocery/imports.dart';
// import 'package:grocery/services/theme_service.dart';
import 'package:grocery/themes/theme_service.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Profile Image
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade600, width: 1),
                ),
                child: ClipOval(
                  child: Container(
                    color: Colors.grey.shade300,
                    child: const Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 24,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hi, Sarath',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'california_usa'.tr,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // Cart Icon with Badge
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.language),
                onPressed: () {
                  Locale current = Get.locale ?? Locale('en', 'US');

                  if (current == Locale('en', 'US')) {
                    Get.updateLocale(Locale('es', 'ES'));
                  } else if (current == Locale('es', 'ES')) {
                    Get.updateLocale(Locale('hi', 'IN'));
                  } else if (current == Locale('hi', 'IN')) {
                    Get.updateLocale(Locale('ne', 'NP'));
                  } else {
                    Get.updateLocale(Locale('en', 'US'));
                  }
                },
              ),
              // IconButton(
              //   onPressed: () {
              //     ThemeService().switchTheme();
              //   },
              //   icon: Icon(Icons.brightness_6),
              // ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  Positioned(
                    right: 4,
                    top: 4,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
