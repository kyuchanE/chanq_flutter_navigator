import 'package:chanq_flutter_navigator/utils/constants_route.dart';
import 'package:flutter/material.dart';

class MainDetailPage extends Page {
  final ValueChanged<String> goHome;
  String detailNum;

  MainDetailPage(
      {required this.goHome,
      required this.detailNum,
      super.key = const ValueKey(mainDetailPage1Route)});

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => MainDetailScreen(
        goHome: goHome,
        detailNum: detailNum,
      ),
    );
  }
}

class MainDetailScreen extends StatelessWidget {
  final ValueChanged<String> goHome;
  String detailNum;

  MainDetailScreen({
    super.key,
    required this.goHome,
    required this.detailNum,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page $detailNum'),
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
              Text('Detail - $detailNum'),
              ElevatedButton(
                onPressed: () => goHome(''),
                child: Text("Go Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}