import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:waveo_frontend/uikit/uikit.dart';

@RoutePage()
class MainInformationScreen extends StatefulWidget {
  const MainInformationScreen({super.key});

  @override
  State<MainInformationScreen> createState() => _MainInformationScreenState();
}

class _MainInformationScreenState extends State<MainInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: BaseSemiBoltText(text: 'Test'),
          )
        ],
      ),
    );
  }
}
