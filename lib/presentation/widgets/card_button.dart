import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

class CardButton extends StatefulWidget {
  const CardButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  final String label;
  final VoidCallback? onPressed;

  @override
  State<CardButton> createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => InkWell(
        onHover: (value) {
          if (!animationController.isAnimating) {
            if (value) {
              animationController.forward();
            } else {
              animationController.reverse();
            }
          } else {
            animationController.reset();
          }
        },
        onTap: widget.onPressed,
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 20,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 14,
            ),
            decoration: BoxDecoration(
              color: context.colors.accent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.scale(
                  scale: 1 - animationController.value,
                  child: AppText.body2(
                    'view',
                    color: context.colors.labelSecondary,
                  ),
                ),
                Transform.scale(
                  scale: animationController.value,
                  child: Icon(
                    Icons.arrow_forward,
                    color: context.colors.labelSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
