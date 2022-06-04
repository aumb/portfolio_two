import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({
    super.key,
    required this.child,
    this.padding,
    this.height,
    this.width,
    this.backgroundColor,
  });

  final Widget child;
  final EdgeInsets? padding;
  final double? height;
  final double? width;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Container(
          padding: padding,
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: child,
        );
      },
    );
  }
}
