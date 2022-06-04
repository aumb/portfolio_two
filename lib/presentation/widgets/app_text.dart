import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_two/resources/colors/custom_colors_extensions.dart';
import 'package:portfolio_two/resources/text_theme/text_styles.dart';

class AppText extends StatelessWidget {
  const AppText._(
    this._textStyle, {
    super.key,
    required this.data,
    this.autoSize = false,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.fontFamily,
    this.lineHeight,
    this.fontWeight,
    this.letterSpacing,
    this.fontSize,
  });

  factory AppText.body2(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    bool autoSize = false,
    TextOverflow? overflow,
    double? letterSpacing,
    String? fontFamily,
    double? lineHeight,
    FontWeight? weight,
    double? fontSize,
  }) {
    return AppText._(
      CustomTextStyles.body2,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      autoSize: autoSize,
      letterSpacing: letterSpacing,
      fontFamily: fontFamily,
      lineHeight: lineHeight,
      fontWeight: weight,
      fontSize: fontSize,
    );
  }

  factory AppText.headline4(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    bool autoSize = false,
    TextOverflow? overflow,
    double? letterSpacing,
    String? fontFamily,
    double? lineHeight,
    FontWeight? weight,
  }) {
    return AppText._(
      CustomTextStyles.headline4,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      autoSize: autoSize,
      letterSpacing: letterSpacing,
      fontFamily: fontFamily,
      lineHeight: lineHeight,
      fontWeight: weight,
    );
  }

  factory AppText.headline5(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    bool autoSize = false,
    TextOverflow? overflow,
    double? letterSpacing,
    String? fontFamily,
    double? lineHeight,
    FontWeight? weight,
  }) {
    return AppText._(
      CustomTextStyles.headline5,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      autoSize: autoSize,
      letterSpacing: letterSpacing,
      fontFamily: fontFamily,
      lineHeight: lineHeight,
      fontWeight: weight,
    );
  }

  final TextStyle _textStyle;
  final String data;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool autoSize;
  final double? letterSpacing;
  final String? fontFamily;
  final double? lineHeight;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    final textColor = color ?? context.colors.labelPrimary;
    final effectiveTextStyle = _textStyle.copyWith(
      color: textColor,
      fontFamily: fontFamily,
      height: lineHeight,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      fontSize: fontSize,
    );

    if (autoSize) {
      return AutoSizeText(
        data,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: effectiveTextStyle,
      );
    }

    return Text(
      data,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: effectiveTextStyle,
    );
  }
}
