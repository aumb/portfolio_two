import 'package:flutter/material.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

class CustomTextTheme {
  static TextTheme get darkTextTheme => ThemeData.dark().textTheme.copyWith(
        headline4: const TextStyle(
          color: CustomColors.white87,
          fontWeight: FontWeight.w800,
          fontSize: 32,
        ),
        headline5: const TextStyle(
          color: CustomColors.white87,
          fontWeight: FontWeight.w300,
          fontSize: 20,
        ),
        headline6: const TextStyle(
          color: CustomColors.white87,
          fontSize: 24,
          fontWeight: FontWeight.w800,
        ),
        subtitle2: const TextStyle(
          color: CustomColors.white87,
        ),
        subtitle1: const TextStyle(
          color: CustomColors.white87,
        ),
        caption: const TextStyle(
          color: CustomColors.white60,
        ),
        button: const TextStyle(
          color: CustomColors.backgroundColor,
          fontWeight: FontWeight.w200,
        ),
        bodyText2: const TextStyle(
          color: CustomColors.white87,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
        bodyText1: const TextStyle(
          color: CustomColors.white87,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      );
}
