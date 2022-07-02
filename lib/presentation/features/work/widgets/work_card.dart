import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/features/work/widgets/work_description_dialog.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

class WorkCard extends StatefulWidget {
  const WorkCard({
    super.key,
  });

  @override
  State<WorkCard> createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard> with TickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (_, __) => Transform.translate(
        offset: Offset(0, -(animationController.value * 3)),
        child: InkWell(
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
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          onTap: () => WorkDescriptionDialog.show(context),
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                color: context.colors.accent,
              ),
              width: 350,
              padding: const EdgeInsets.all(8),
              child: Image.network(
                'https://cdn-anaoj.nitrocdn.com/xuTLKMQMxtlvDapARubFjGySLqObtsFU/assets/static/optimized/rev-30e3693/wp-content/uploads/2022/05/Layer-logo-white.png',
                color: context.colors.card,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
