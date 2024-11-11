import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:waveo_frontend/router/router.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    const duration = 250;
    return AutoTabsRouter(
      duration: const Duration(
        microseconds: duration,
      ),
      routes: [
        MainInformationRoute(),
      ],
    );
  }
}
