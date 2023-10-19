import 'package:chanq_flutter_navigator/utils/constants_route.dart';
import 'package:flutter/material.dart';

class MainHomePage extends Page {
  final ValueChanged<String> changePage;

  const MainHomePage({required this.changePage});

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => MainHomeScreen(changePage: changePage),
    );
  }
}

class MainHomeScreen extends StatelessWidget {
  final ValueChanged<String> changePage;

  const MainHomeScreen({super.key, required this.changePage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChanQ Navigator - Pages'),
        actions: [
          IconButton(
            onPressed: () => changePage(settingPageRoute),
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () => changePage(mainDetailPage1Route),
              child: const Text("Detail - 1"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => changePage(mainDetailPage2Route),
              child: const Text("Detail - 2"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => changePage(mainDetailPage3Route),
              child: const Text("Detail - 3"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Navigator Pop"),
            ),
          ],
        ),
      ),
    );
  }
}
