import 'package:flutter/material.dart';

class MainDetailPage extends Page {
  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => const MainDetailScreen(),
    );
  }
}

class MainDetailScreen extends StatelessWidget {
  const MainDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
