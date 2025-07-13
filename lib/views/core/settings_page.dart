import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/config/app_colors.dart';
import 'package:grocery/controllers/settings_controller.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SettingsController>();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: AppColors.background,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back, color: Colors.white),
        //   onPressed: () => Get.back(),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // User Info Card
            Card(
              color: AppColors.card,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/150?img=3',
                  ),
                  radius: 25,
                ),
                title: const Text(
                  'Muhammad Ali',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  'muhammad.ali@example.com',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(Icons.edit, color: Colors.white),
              ),
            ),

            const SizedBox(height: 16),

            // Card 1: My Account, Orders, Payments, Favourites
            Card(
              color: AppColors.card,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  _buildSettingTile(Icons.person, 'My Account'),
                  _buildSettingTile(Icons.shopping_bag, 'My Orders'),
                  _buildSettingTile(Icons.payment, 'Payments'),
                  _buildSettingTile(Icons.favorite, 'Favourites'),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Card 2: Dark Mode Toggle
            Card(
              color: AppColors.card,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Obx(
                () => SwitchListTile(
                  value: controller.isDarkMode.value,
                  onChanged: controller.toggleDarkMode,
                  title: const Text(
                    'Dark Mode',
                    style: TextStyle(color: Colors.white),
                  ),
                  secondary: const Icon(Icons.dark_mode, color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Card 3: Help, Terms & Conditions
            Card(
              color: AppColors.card,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  _buildSettingTile(Icons.help_outline, 'Help'),
                  _buildSettingTile(
                    Icons.privacy_tip_outlined,
                    'Terms & Conditions',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile _buildSettingTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 16,
      ),
      onTap: () {
        // Handle navigation
      },
    );
  }
}
