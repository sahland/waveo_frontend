import 'package:flutter/material.dart';

class BaseSemiBoltText extends StatelessWidget {
  final String text;
  const BaseSemiBoltText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const fontSize = 20.0;

    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
