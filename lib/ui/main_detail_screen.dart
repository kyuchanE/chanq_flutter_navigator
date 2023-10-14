import 'package:flutter/material.dart';

class MainDetailPage extends Page {
  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => MainDetailScreen(),
    );
  }
}

class MainDetailScreen extends StatelessWidget {
  const MainDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
