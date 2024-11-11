import 'package:flutter/material.dart';

class BaseRegularText extends StatelessWidget {
  final String text;
  const BaseRegularText({
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
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
