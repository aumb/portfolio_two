import 'package:flutter/material.dart';
import 'package:portfolio_two/resources/colors/colors.dart';
import 'package:portfolio_two/resources/text_theme/text_theme.dart';

class CustomTheme {
  static final dark = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: CustomColors.colorsDark.background,
    ),
    appBarTheme: AppBarTheme(
      color: CustomColors.colorsDark.background,
      iconTheme: IconThemeData(
        color: CustomColors.colorsDark.labelPrimary,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: CustomColors.colorsDark.accent,
      selectionHandleColor: CustomColors.colorsDark.accent,
    ),
    primarySwatch: _swatch,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: _swatch,
      accentColor: CustomColors.colorsDark.accent,
      errorColor: CustomColors.colorsDark.error,
      brightness: Brightness.dark,
      cardColor: CustomColors.colorsDark.card,
      backgroundColor: CustomColors.colorsDark.background,
    ),
    errorColor: CustomColors.colorsDark.error,
    secondaryHeaderColor: CustomColors.colorsDark.secondaryAccent,
    cardColor: CustomColors.colorsDark.card,
    canvasColor: CustomColors.colorsDark.accent,
    scaffoldBackgroundColor: CustomColors.colorsDark.background,
    backgroundColor: CustomColors.colorsDark.background,
    hintColor: Colors.white38,
    textTheme: CustomTextTheme.darkTextTheme,
    iconTheme: IconThemeData(
      size: 16,
      color: CustomColors.colorsDark.accent,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        color: Colors.white38,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: CustomColors.colorsDark.accent,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: CustomColors.colorsDark.background,
        ),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: CustomColors.colorsDark.chipBackground,
      labelStyle: const TextStyle(
        color: Colors.white38,
      ),
      secondaryLabelStyle: TextStyle(
        color: CustomColors.colorsDark.accent,
      ),
      secondarySelectedColor: CustomColors.colorsDark.accent,
      padding: EdgeInsets.zero,
      shape: const StadiumBorder(),
      selectedColor: CustomColors.colorsDark.accent,
      labelPadding: const EdgeInsets.symmetric(horizontal: 8),
      brightness: Brightness.dark,
      disabledColor: Colors.grey,
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: CustomColors.colorsDark.accent,
      ),
    ),
  );

  static final _swatch = MaterialColor(
    0xFF242729,
    <int, Color>{
      50: CustomColors.colorsDark.card,
      100: CustomColors.colorsDark.card,
      200: CustomColors.colorsDark.card,
      300: CustomColors.colorsDark.card,
      400: CustomColors.colorsDark.card,
      500: CustomColors.colorsDark.background,
      600: CustomColors.colorsDark.background,
      700: CustomColors.colorsDark.background,
      800: CustomColors.colorsDark.background,
      900: CustomColors.colorsDark.background,
    },
  );
}
