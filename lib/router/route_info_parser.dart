import 'package:chanq_flutter_navigator/router/routes_config.dart';
import 'package:flutter/cupertino.dart';
import '../componentes/constants_routes.dart';

class MyRouteInformationParser extends RouteInformationParser<RouteConfig> {
  @override
  Future<RouteConfig> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isEmpty) {
      return RouteConfig.newRoute(mainPageRoute);
    } else if (uri.pathSegments.isNotEmpty) {
      return RouteConfig.newRoute(uri.pathSegments.toString());
    } else {
      return RouteConfig.error();
    }
  }

  @override
  RouteInformation? restoreRouteInformation(RouteConfig configuration) {
    String route = configuration.selectRoute ?? '/error';

    switch (route) {
      case mainPageRoute:
        return const RouteInformation(location: mainPageRoute);
      case settingPageRoute:
        return const RouteInformation(location: settingPageRoute);
      case mainDetailPage1Route:
        return const RouteInformation(location: mainDetailPage1Route);
      case mainDetailPage2Route:
        return const RouteInformation(location: mainDetailPage2Route);
      case mainDetailPage3Route:
        return const RouteInformation(location: mainDetailPage3Route);
      default:
        return const RouteInformation(location: '/error');
    }
  }
}
