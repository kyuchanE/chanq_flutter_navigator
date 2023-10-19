import 'package:chanq_flutter_navigator/ui/main_detail_screen.dart';
import 'package:chanq_flutter_navigator/ui/main_home_screen.dart';
import 'package:chanq_flutter_navigator/ui/setting_screen.dart';
import 'package:chanq_flutter_navigator/utils/q_logger.dart';
import 'package:flutter/material.dart';
import 'package:chanq_flutter_navigator/utils/constants_route.dart';

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
          MainHomePage(
            changePage: _changePage,
          ),
          if (_pageRoute != null && _pageRoute == mainDetailPage1Route)
            MainDetailPage(
              goHome: _returnHome,
              detailNum: "1",
            )
          else if (_pageRoute != null && _pageRoute == mainDetailPage2Route)
            MainDetailPage(
              goHome: _returnHome,
              detailNum: "2",
            )
          else if (_pageRoute != null && _pageRoute == mainDetailPage3Route)
            MainDetailPage(
              goHome: _returnHome,
              detailNum: "3",
            )
          else if (_pageRoute != null && _pageRoute == settingPageRoute)
            SettingPage(
              goHome: _returnHome,
            )
        ],
        onPopPage: (route, result) {
          qLogger.i('onPopPage!');
          if (!route.didPop(result)) {
            qLogger.i('onPopPage return false');
            return false;
          }
          qLogger.i('onPopPage return true');
          return true;
        },
      ),
    );
  }

  void _changePage(String routePage) {
    setState(() {
      qLogger.d('_changePage setState');
      _pageRoute = routePage;
    });
  }

  void _returnHome(String str) {
    setState(() {
      qLogger.d('_returnHome setState');
      _pageRoute = null;
    });
  }
}
