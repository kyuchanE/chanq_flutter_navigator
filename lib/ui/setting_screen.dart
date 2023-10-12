import 'package:flutter/material.dart';

class SettingPage extends Page {
  final ValueChanged<String> goHome;

  const SettingPage({required this.goHome});

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => SettingScreen(
        goHome: goHome,
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  final ValueChanged<String> goHome;

  const SettingScreen({
    super.key,
    required this.goHome,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
        leading: IconButton(
          onPressed: () => goHome(""),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
    );
  }
}
