import 'package:auto_route/auto_route.dart';
import 'package:waveo_frontend/router/router.dart';

class ProfileRoutes {
  static final routes = AutoRoute(page: ProfileWrapperRoute.page, children: [
    AutoRoute(page: ProfileRoute.page, initial: true),
  ]);
}
