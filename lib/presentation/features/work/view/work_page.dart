import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/features/work/widgets/work_card.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const WorkView();
  }
}

class WorkView extends StatelessWidget {
  const WorkView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    const works = [
      WorkCard(),
      WorkCard(),
      WorkCard(),
    ];

    return LayoutWidget(
      key: const ValueKey('workPageLayoutWidget'),
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: width * .1),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 732),
              child: Wrap(
                spacing: 16,
                runSpacing: 24,
                children: works
                    .map(
                      (e) => e,
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
