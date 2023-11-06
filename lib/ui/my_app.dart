import 'package:chanq_flutter_navigator/ui/main_detail_screen.dart';
import 'package:chanq_flutter_navigator/ui/main_home_screen.dart';
import 'package:chanq_flutter_navigator/ui/setting_detail_screen.drat.dart';
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
  late List<Page> _pageList;

  @override
  void initState() {
    super.initState();
    _pageList = [
      MainHomePage(
        changePage: _changePage,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    qLogger.i('_pageList : $_pageList');
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navigator(
        key: UniqueKey(),
        // TODO chan route '/' 기준으로 page 스택 작업 필요 >> 그 전 화면의 데이터가 유지되는가? >> result
        pages: _pageList,
        onPopPage: (route, result) {
          qLogger.i('onPopPage! ${route.toString()} :: ${result.toString()}');
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
      qLogger.d('_changePage setState : $routePage');
      _pageRoute = routePage;

      if (routePage.isEmpty) {
        _pageList = [
          MainHomePage(
            changePage: _changePage,
          )
        ];
      } else {
        var routeUri = Uri.parse(routePage);
        if (routeUri.pathSegments.length == _pageList.length) {
          _pageList.removeLast();
          _pageList.add(_returnRoutePage(routePage));
        } else if (routeUri.pathSegments.length > _pageList.length) {
          _pageList.add(_returnRoutePage(routePage));
        } else {}
      }
    });
  }

  void _returnHome(String str) {
    setState(() {
      qLogger.d('_returnHome setState');
      _pageList = [
        MainHomePage(
          changePage: _changePage,
        )
      ];
    });
  }

  Page _returnRoutePage(String str) {
    switch (str) {
      case mainPageRoute:
        return MainHomePage(
          changePage: _changePage,
        );
      case mainDetailPage1Route:
        return MainDetailPage(
          goHome: _returnHome,
          detailNum: "1",
          key: ValueKey(mainDetailPage1Route),
        );
      case mainDetailPage2Route:
        return MainDetailPage(
          goHome: _returnHome,
          detailNum: "2",
          key: ValueKey(mainDetailPage2Route),
        );
      case mainDetailPage3Route:
        return MainDetailPage(
          goHome: _returnHome,
          detailNum: "3",
          key: ValueKey(mainDetailPage3Route),
        );
      case settingPageRoute:
        return SettingPage(
          changePage: _changePage,
        );
      case settingDetail1PageRoute:
        return SettingDetailPage(
          goHome: _returnHome,
          detailNum: '1',
          key: ValueKey(settingDetail1PageRoute),
        );
      case settingDetail2PageRoute:
        return SettingDetailPage(
          goHome: _returnHome,
          detailNum: '2',
          key: ValueKey(settingDetail2PageRoute),
        );
      case settingDetail3PageRoute:
        return SettingDetailPage(
          goHome: _returnHome,
          detailNum: '3',
          key: ValueKey(settingDetail3PageRoute),
        );
      default:
        return MainHomePage(
          changePage: _changePage,
        );
    }
  }
}
