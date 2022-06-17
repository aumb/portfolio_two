import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/svg_icon.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key,
    required this.iconAsset,
    this.size = 38,
    this.onHover,
    this.onTap,
    this.backgroundColor,
    this.iconColor,
  });

  final double size;
  final String iconAsset;
  final Color? backgroundColor;
  final Color? iconColor;
  final void Function(bool)? onHover;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: onHover,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: size,
        height: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: iconColor ?? Colors.black,
          ),
        ),
        child: SvgIcon.from(iconAsset, color: iconColor, size: size - 16),
      ),
    );
  }
}
