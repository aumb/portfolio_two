import 'package:flutter/material.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

class CustomTextTheme {
  static TextTheme get darkTextTheme => ThemeData.dark().textTheme.copyWith(
        headline4: TextStyle(
          color: CustomColors.colorsDark.labelPrimary,
          fontWeight: FontWeight.w800,
          fontSize: 32,
        ),
        headline5: TextStyle(
          color: CustomColors.colorsDark.labelPrimary,
          fontWeight: FontWeight.w300,
          fontSize: 20,
        ),
        headline6: TextStyle(
          color: CustomColors.colorsDark.labelPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w800,
        ),
        subtitle2: TextStyle(
          color: CustomColors.colorsDark.labelPrimary,
        ),
        subtitle1: TextStyle(
          color: CustomColors.colorsDark.labelPrimary,
        ),
        caption: TextStyle(
          color: CustomColors.colorsDark.labelSecondary,
        ),
        button: TextStyle(
          color: CustomColors.colorsDark.background,
          fontWeight: FontWeight.w200,
        ),
        bodyText2: TextStyle(
          color: CustomColors.colorsDark.labelPrimary,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
        bodyText1: TextStyle(
          color: CustomColors.colorsDark.labelPrimary,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      );
}
