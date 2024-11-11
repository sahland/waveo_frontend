import 'package:auto_route/auto_route.dart';
import 'package:waveo_frontend/features/features.dart';
import 'package:waveo_frontend/router/main_informaton_routes.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          initial: true,
          children: [
            MainInformationRoutes.routes,
          ],
        ),
      ];
}
