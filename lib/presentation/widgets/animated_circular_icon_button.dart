import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/circular_icon_button.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

class AnimatedCircularIconButton extends StatefulWidget {
  const AnimatedCircularIconButton({
    super.key,
    required this.iconAsset,
    required this.onPressed,
  });

  final String iconAsset;
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
      backgroundColor: _isHover ? context.colors.card : context.colors.accent,
      iconColor: _isHover ? context.colors.accent : context.colors.card,
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
