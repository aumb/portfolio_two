import 'package:flutter/material.dart';

class CustomColors {
  const CustomColors({
    required this.accent,
    required this.card,
    required this.background,
    required this.chipBackground,
    required this.secondaryAccent,
    required this.error,
    required this.labelPrimary,
    required this.labelSecondary,
  });

  final Color accent;
  final Color card;
  final Color background;
  final Color chipBackground;
  final Color secondaryAccent;
  final Color error;
  final Color labelPrimary;
  final Color labelSecondary;

  static const colorsDark = CustomColors(
    accent: Color(0xFF66CCFF),
    card: Color(0xFF313231),
    background: Color(0xFF242021),
    chipBackground: Color(0xFF424242),
    secondaryAccent: Color(0xFFFFB74D),
    error: Color(0xFFEF5350),
    labelPrimary: Color.fromRGBO(255, 255, 255, .87),
    labelSecondary: Color.fromRGBO(0, 0, 0, 1),
  );
}
