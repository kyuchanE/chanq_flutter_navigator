import 'package:chanq_flutter_navigator/ui/main_detail_screen.dart';
import 'package:chanq_flutter_navigator/ui/main_home_screen.dart';
import 'package:chanq_flutter_navigator/ui/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:chanq_flutter_navigator/components/constants_route.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _pageRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navigator(
        pages: [
          MainHomePage(),
          if (_pageRoute != null && _pageRoute == mainDetailPageRoute)
            MainDetailPage()
          else if (_pageRoute != null && _pageRoute == settingPageRoute)
            SettingPage()
        ],
        onPopPage: (route, result) {
          return true;
        },
      ),
    );
  }
}
