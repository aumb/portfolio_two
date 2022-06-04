import 'package:flutter/material.dart';
import 'package:portfolio_two/resources/colors/colors.dart';
import 'package:portfolio_two/resources/text_theme/text_theme.dart';

class CustomTheme {
  static final dark = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: CustomColors.backgroundColor,
    ),
    appBarTheme: const AppBarTheme(
      color: CustomColors.backgroundColor,
      iconTheme: IconThemeData(
        color: CustomColors.white87,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: CustomColors.accentColor,
      selectionHandleColor: CustomColors.accentColor,
    ),
    primarySwatch: _swatch,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: _swatch,
      accentColor: CustomColors.accentColor,
      errorColor: CustomColors.errorColor,
      brightness: Brightness.dark,
      cardColor: CustomColors.cardColor,
      backgroundColor: CustomColors.backgroundColor,
    ),
    errorColor: CustomColors.errorColor,
    secondaryHeaderColor: CustomColors.secondaryAccent,
    cardColor: CustomColors.cardColor,
    canvasColor: CustomColors.accentColor,
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    backgroundColor: CustomColors.backgroundColor,
    hintColor: Colors.white38,
    textTheme: CustomTextTheme.darkTextTheme,
    iconTheme: const IconThemeData(
      size: 16,
      color: CustomColors.accentColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: Colors.white38,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: CustomColors.accentColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: CustomColors.backgroundColor,
        ),
      ),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: CustomColors.chipBackgroundColor,
      labelStyle: TextStyle(
        color: Colors.white38,
      ),
      secondaryLabelStyle: TextStyle(
        color: CustomColors.accentColor,
      ),
      secondarySelectedColor: CustomColors.accentColor,
      padding: EdgeInsets.zero,
      shape: StadiumBorder(),
      selectedColor: CustomColors.accentColor,
      labelPadding: EdgeInsets.symmetric(horizontal: 8),
      brightness: Brightness.dark,
      disabledColor: Colors.grey,
    ),
    tooltipTheme: const TooltipThemeData(
      decoration: BoxDecoration(
        color: CustomColors.accentColor,
      ),
    ),
  );

  static const _swatch = MaterialColor(
    0xFF242729,
    <int, Color>{
      50: CustomColors.cardColor,
      100: CustomColors.cardColor,
      200: CustomColors.cardColor,
      300: CustomColors.cardColor,
      400: CustomColors.cardColor,
      500: CustomColors.backgroundColor,
      600: CustomColors.backgroundColor,
      700: CustomColors.backgroundColor,
      800: CustomColors.backgroundColor,
      900: CustomColors.backgroundColor,
    },
  );
}
