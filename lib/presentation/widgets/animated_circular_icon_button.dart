import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/circular_icon_button.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

class AnimatedCircularIconButton extends StatefulWidget {
  const AnimatedCircularIconButton({
    super.key,
    required this.iconAsset,
    required this.onPressed,
    this.baseColor,
    this.hoverColor,
  });

  final String iconAsset;
  final Color? baseColor;
  final Color? hoverColor;
  final void Function() onPressed;

  @override
  State<AnimatedCircularIconButton> createState() =>
      _AnimatedCircularIconButtonState();
}

class _AnimatedCircularIconButtonState
    extends State<AnimatedCircularIconButton> {
  var _isHover = false;

  @override
  Widget build(BuildContext context) {
    return CircularIconButton(
      iconAsset: widget.iconAsset,
      backgroundColor: _isHover
          ? widget.hoverColor ?? context.colors.card
          : widget.baseColor ?? context.colors.accent,
      iconColor: _isHover
          ? widget.baseColor ?? context.colors.accent
          : widget.hoverColor ?? context.colors.card,
      onTap: widget.onPressed,
      onHover: (isHover) {
        if (_isHover != isHover) {
          setState(() {
            _isHover = isHover;
          });
        }
      },
    );
  }
}
