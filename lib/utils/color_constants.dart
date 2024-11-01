import 'package:flutter/material.dart';

class ColorConstants {
  static const greyBlue = Color(0xFF434551);
  static const bluishBlack = Color(0xFF0B101E);
  static const white = Color(0xFFFFFFFF);
  static const lightWhite = Color(0x61FFFFFF);
  static const shadowColor = Color(0x29FFFFFF);
  static const black = Color(0xFF0A0F1D);
  static const navyBlue = Color(0xFF0F5894);
  static const iconblue = Color(0xFF8C8BA7);
  static const pacaficblue = Color(0xFF333E5C);
  static const red = Color(0xFF980B01);
  static const blue = Color(0xFF314FF6);
  static const transparent = Color(0x1F000000);
  static const green = Color(0xFF32D34B);
  static const gold = Color(0xFFFFD60A);

  static List<Color> gradientColors = [
    Color(0xFF0B101E).withOpacity(1),
    Color(0xFF0B101E).withOpacity(0.86),
    Color(0xFF0B101E).withOpacity(0.69),
    Color(0xFF0B101E).withOpacity(0.20),
    Color(0xFF0B101E).withOpacity(0.40),
    Color(0xFF0B101E).withOpacity(1),
  ];

  static List<Color> containerGradient = [
    Colors.transparent,
    Colors.black87,
  ];
}
