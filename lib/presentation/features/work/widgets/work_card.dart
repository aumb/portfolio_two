import 'package:flutter/material.dart';
import 'package:portfolio_two/domain/models/work/work.dart';
import 'package:portfolio_two/presentation/features/work/widgets/work_description_dialog.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

class WorkCard extends StatefulWidget {
  const WorkCard({
    super.key,
    required this.work,
  });

  final Work work;

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
          onTap: () => WorkDescriptionDialog.show(context, widget.work),
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                color: context.colors.background,
              ),
              width: 350,
              height: 200,
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                widget.work.imageUrl,
                color: context.colors.labelPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
