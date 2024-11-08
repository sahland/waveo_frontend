import 'package:flutter/material.dart';
import 'package:waveo_frontend/uikit/uikit.dart';

abstract class AppThemeData {
  static const _lightColorScheme = AppColorScheme.light();
  static const _darkColorScheme = AppColorScheme.dark();

  static final ligthTheme = ThemeData(
    extensions: const [_lightColorScheme],
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: _lightColorScheme.primary,
    ),
    scaffoldBackgroundColor: _lightColorScheme.background,
    cardColor: _lightColorScheme.dialogBackgroundColor,
    secondaryHeaderColor: _lightColorScheme.secondary,
    primaryColor: _lightColorScheme.primary,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: _lightColorScheme.textField,
      ),
    ),
    dialogBackgroundColor: _lightColorScheme.dialogBackgroundColor,
  );

  static final darkTheme = ThemeData(
    extensions: const [_darkColorScheme],
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: _darkColorScheme.primary,
    ),
    scaffoldBackgroundColor: _darkColorScheme.background,
    cardColor: _darkColorScheme.dialogBackgroundColor,
    secondaryHeaderColor: _darkColorScheme.secondary,
    primaryColor: _darkColorScheme.primary,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: _darkColorScheme.textField,
      ),
    ),
    dialogBackgroundColor: _darkColorScheme.dialogBackgroundColor,
  );
}
