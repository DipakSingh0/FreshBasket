import 'package:grocery/imports.dart';
import 'package:grocery/views/core/home/widgets/category_tabs.dart';
import 'package:grocery/views/core/home/widgets/search_bar.dart';
import 'package:grocery/bindings/tab_binding.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(),
            const SearchBarWidget(),
            const SizedBox(height: 16),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Builder(
                  builder: (context) {
                    // Initialize binding
                    TabBinding().dependencies();
                    return const CategoryTabs();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
