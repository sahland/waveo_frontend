import 'package:auto_route/auto_route.dart';
import 'package:waveo_frontend/router/router.dart';

class MainInformationRoutes {
  static final routes = AutoRoute(
    page: MainInformationWrapperRoute.page,
    children: [
      AutoRoute(page: MainInformationRoute.page, initial: true),
    ],
  );
}
