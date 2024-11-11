import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:waveo_frontend/theme/theme_storage.dart';
import 'package:waveo_frontend/waveo_app.dart';

import 'features/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final preferences = await SharedPreferences.getInstance();
  final themeStorage = ThemeStorage(preferences: preferences);
  final themeRepository = ThemeRepository(themeStorage: themeStorage);
  final themeController = ThemeController(themeRepository: themeRepository);

  runApp(WaveoApp(themeController: themeController));
}
