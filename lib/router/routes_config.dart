class RouteConfig {
  final String? selectRoute;
  final bool showError;

  RouteConfig.newRoute(this.selectRoute) : showError = false;

  RouteConfig.error()
      : selectRoute = null,
        showError = true;
}
