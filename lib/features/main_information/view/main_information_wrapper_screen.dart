import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class MainInformationWrapperScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const MainInformationWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) => AutoRouter();

  @override
  Widget wrappedRoute(BuildContext context) => this;
}
