import 'package:flutter/material.dart';

import '../utils/constants_route.dart';

class SettingPage extends Page {
  final ValueChanged<String> changePage;

  const SettingPage({
    required this.changePage,
    super.key = const ValueKey(settingPageRoute),
  });

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => SettingScreen(
        changePage: changePage,
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  final ValueChanged<String> changePage;

  const SettingScreen({
    super.key,
    required this.changePage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () => changePage(settingDetail1PageRoute),
              child: const Text(
                'Setting Detail - 1',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => changePage(settingDetail2PageRoute),
              child: const Text(
                'Setting Detail - 2',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => changePage(settingDetail3PageRoute),
              child: const Text(
                'Setting Detail - 3',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
