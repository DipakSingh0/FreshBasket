import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      // Use Center or other layout for its content
      child: Text(
        'This is the Search Tab Content',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
