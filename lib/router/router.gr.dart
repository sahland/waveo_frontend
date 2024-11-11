// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MainInformationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainInformationScreen(),
      );
    },
    MainInformationWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MainInformationWrapperScreen()),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainInformationScreen]
class MainInformationRoute extends PageRouteInfo<void> {
  const MainInformationRoute({List<PageRouteInfo>? children})
      : super(
          MainInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainInformationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainInformationWrapperScreen]
class MainInformationWrapperRoute extends PageRouteInfo<void> {
  const MainInformationWrapperRoute({List<PageRouteInfo>? children})
      : super(
          MainInformationWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainInformationWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
