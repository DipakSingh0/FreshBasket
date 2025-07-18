import 'package:grocery/imports.dart';
import 'package:grocery/themes/theme_service.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SettingsController>();
    final themeService = Get.find<ThemeService>();

    return Scaffold(
      backgroundColor: themeService.backgroundColor,
      appBar: AppBar(
        title: Text(
          'settings'.tr,
          style: TextStyle(
            color: themeService.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: themeService.backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: themeService.iconColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // User Profile Card
            Card(
              color: themeService.cardColor,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/150?img=3',
                  ),
                ),
                title: Text(
                  'Muhammad Ali',
                  style: TextStyle(
                    color: themeService.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'muhammad.ali@example.com',
                  style: TextStyle(
                    color: themeService.textColor.withOpacity(0.7),
                    fontSize: 14,
                  ),
                ),
                trailing: Icon(Icons.edit, color: themeService.iconColor),
              ),
            ),
            const SizedBox(height: 20),

            // Account Settings
            _buildSectionCard(
              themeService,
              title: 'account_settings'.tr,
              items: [
                _buildSettingTile(Icons.person_outline, 'my_account'.tr),
                _buildSettingTile(Icons.shopping_bag_outlined, 'my_orders'.tr),
                _buildSettingTile(Icons.payment_outlined, 'payments'.tr),
                _buildSettingTile(Icons.favorite_outline, 'favourites'.tr),
              ],
            ),
            const SizedBox(height: 20),

            // App Settings
            _buildSectionCard(
              themeService,
              title: 'app_settings'.tr,
              items: [
                Obx(
                  () => ListTile(
                    leading: Icon(
                      controller.isDarkMode.value
                          ? Icons.light_mode_outlined
                          : Icons.dark_mode_outlined,
                      color: themeService.iconColor,
                    ),
                    title: Text(
                      controller.modeText,
                      style: TextStyle(color: themeService.textColor),
                    ),
                    trailing: Switch(
                      value: controller.isDarkMode.value,
                      onChanged: controller.toggleDarkMode,
                      activeColor: themeService.backgroundColor,
                      inactiveThumbColor: Colors.green,
                    ),
                  ),
                ),
                _buildSettingTile(
                  Icons.notifications_outlined,
                  'notifications'.tr,
                ),
                _buildSettingTile(Icons.language_outlined, 'language'.tr),
              ],
            ),
            const SizedBox(height: 20),

            // Support
            _buildSectionCard(
              themeService,
              title: 'support'.tr,
              items: [
                _buildSettingTile(Icons.help_outline, 'help_center'.tr),
                _buildSettingTile(
                  Icons.privacy_tip_outlined,
                  'terms_conditions'.tr,
                ),
                _buildSettingTile(Icons.info_outline, 'about_app'.tr),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard(
    ThemeService themeService, {
    required String title,
    required List<Widget> items,
  }) {
    return Card(
      color: themeService.cardColor,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              title,
              style: TextStyle(
                color: themeService.textColor.withOpacity(0.7),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ...items,
        ],
      ),
    );
  }

  Widget _buildSettingTile(IconData icon, String title) {
    final themeService = Get.find<ThemeService>();

    return ListTile(
      leading: Icon(icon, color: themeService.iconColor),
      title: Text(title, style: TextStyle(color: themeService.textColor)),
      trailing: Icon(
        Icons.chevron_right,
        color: themeService.iconColor.withOpacity(0.5),
      ),
      onTap: () {
        // Handle navigation
      },
    );
  }
}
