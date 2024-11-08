import 'package:flutter/material.dart';

abstract class LightColorPalette {
  static const white = Colors.white;

  static const black = Colors.black; //Primary

  static const lightBackground = Color(0xFFFFFFFF); //Scaffold

  static const lightGray = Color(0xFFECECEC);

  static const buttonGray = Color(0xFFC0C0C0); //Dialog

  static const userGray = Color(0xFF666666);
}

abstract class DarkColorPalette {
  static const white = Colors.white; //Primary

  static const black = Colors.black;

  static const darkBackground = Color(0xFF1D1D1E); //Scaffold

  static const lightGray = Color(0xFF232324);

  static const buttonGray = Color(0xFF333335); //Dialog

  static const userGray = Color(0xFF666666);
}
