import 'package:flutter/material.dart';
import 'package:waveo_frontend/features/features.dart';

class ThemeButton extends StatelessWidget {
  final double padding;

  const ThemeButton({
    this.padding = 8,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: () {
        ThemeInherited.of(context).switchThemeMode();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.dialogBackgroundColor,
        shape: const CircleBorder(),
        padding: EdgeInsets.all(padding),
      ),
      child: const Icon(Icons.brightness_4),
    );
  }
}
