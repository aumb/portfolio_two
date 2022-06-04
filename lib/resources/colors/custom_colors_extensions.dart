import 'package:flutter/material.dart';
import 'package:portfolio_two/resources/colors/custom_colors.dart';

extension CustomColorsExtension on BuildContext {
  CustomColors get colors {
    final brightness = Theme.of(this).brightness;

    switch (brightness) {
      case Brightness.light:
        return CustomColors.colorsDark;
      case Brightness.dark:
        return CustomColors.colorsDark;
    }
  }
}
