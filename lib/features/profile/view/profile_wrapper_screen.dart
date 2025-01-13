import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class ProfileWrapperScreen extends StatelessWidget implements AutoRouteWrapper {
  const ProfileWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) => AutoRouter();

  @override
  Widget wrappedRoute(BuildContext context) => this;
}
