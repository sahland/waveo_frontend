import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:waveo_frontend/router/router.dart';
import 'package:waveo_frontend/uikit/theme/theme_data.dart';

import 'features/theme/theme.dart';

class WaveoApp extends StatefulWidget {
  const WaveoApp({
    super.key,
    required this.themeController,
  });

  final ThemeController themeController;

  @override
  State<WaveoApp> createState() => _WaveoAppState();
}

class _WaveoAppState extends State<WaveoApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ThemeInherited(
      themeController: widget.themeController,
      child: ThemeBuilder(
        builder: (_, themeMode) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            //debugShowMaterialGrid: true,
            theme: AppThemeData.ligthTheme,
            darkTheme: AppThemeData.darkTheme,
            themeMode: themeMode,
            routerConfig: _router.config(),
          );
        },
      ),
    );
  }
}
