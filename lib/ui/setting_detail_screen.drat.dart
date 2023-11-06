import 'package:chanq_flutter_navigator/utils/constants_route.dart';
import 'package:flutter/material.dart';

class SettingDetailPage extends Page {
  final ValueChanged<String> goHome;
  String detailNum;

  SettingDetailPage({
    required this.goHome,
    required this.detailNum,
    super.key = const ValueKey(settingDetail1PageRoute),
  });

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => SettingDetailScreen(
        goHome: goHome,
        detailNum: detailNum,
      ),
    );
  }
}

class SettingDetailScreen extends StatelessWidget {
  final ValueChanged<String> goHome;
  String detailNum;

  SettingDetailScreen({
    super.key,
    required this.goHome,
    required this.detailNum,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting Detail Page $detailNum'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
            child: Column(
          children: [
            Text('Setting Detail - $detailNum'),
            ElevatedButton(
              onPressed: () => goHome(''),
              child: Text('Go Home'),
            )
          ],
        )),
      ),
    );
  }
}
