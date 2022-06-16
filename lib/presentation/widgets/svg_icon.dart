import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon {
  SvgIcon._();

  static SvgPicture from(
    String assetName, {
    Key? key,
    double? width,
    double? height,
    double? size,
    Color? color,
    BoxFit? fit,
  }) =>
      SvgPicture.asset(
        assetName,
        key: key,
        width: size ?? width,
        height: size ?? height,
        color: color,
        fit: fit ?? BoxFit.contain,
      );

  static SvgPicture s24(
    String assetName, {
    Key? key,
    Color? color,
  }) =>
      SvgPicture.asset(
        assetName,
        key: key,
        width: 24,
        height: 24,
        color: color,
      );
}
