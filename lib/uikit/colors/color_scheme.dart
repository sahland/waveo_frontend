import 'package:flutter/material.dart';
import 'package:waveo_frontend/uikit/uikit.dart';

@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color primary;
  final Color secondary;
  final Color surface;
  final Color background;
  final Color textField;
  final Color dialogBackgroundColor;

  const AppColorScheme._({
    required this.primary,
    required this.secondary,
    required this.surface,
    required this.background,
    required this.textField,
    required this.dialogBackgroundColor,
  });

  const AppColorScheme.light()
      : primary = LightColorPalette.black,
        secondary = LightColorPalette.lightGray,
        surface = LightColorPalette.buttonGray,
        background = LightColorPalette.lightBackground,
        textField = LightColorPalette.black,
        dialogBackgroundColor = LightColorPalette.buttonGray;

  const AppColorScheme.dark()
      : primary = DarkColorPalette.white,
        secondary = DarkColorPalette.lightGray,
        surface = DarkColorPalette.buttonGray,
        background = DarkColorPalette.darkBackground,
        textField = DarkColorPalette.white,
        dialogBackgroundColor = DarkColorPalette.buttonGray;

  @override
  ThemeExtension<AppColorScheme> copyWith({
    Color? primary,
    Color? secondary,
    Color? surface,
    Color? background,
    Color? textField,
    Color? dialogBackgroundColor,
  }) {
    return AppColorScheme._(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      surface: surface ?? this.surface,
      background: background ?? this.background,
      textField: textField ?? this.textField,
      dialogBackgroundColor:
          dialogBackgroundColor ?? this.dialogBackgroundColor,
    );
  }

  @override
  ThemeExtension<AppColorScheme> lerp(
    ThemeExtension<AppColorScheme>? other,
    double t,
  ) {
    if (other is! AppColorScheme) {
      return this;
    }

    return AppColorScheme._(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      background: Color.lerp(background, other.background, t)!,
      textField: Color.lerp(textField, other.textField, t)!,
      dialogBackgroundColor: Color.lerp(
        dialogBackgroundColor,
        other.dialogBackgroundColor,
        t,
      )!,
    );
  }

  static AppColorScheme of(BuildContext context) =>
      Theme.of(context).extension<AppColorScheme>()!;
}
