import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  final double padding;
  final VoidCallback? onPressed;

  const SettingsButton({
    this.padding = 8,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.dialogBackgroundColor,
        shape: const CircleBorder(),
        padding: EdgeInsets.all(padding),
      ),
      child: const Icon(Icons.settings),
    );
  }
}
