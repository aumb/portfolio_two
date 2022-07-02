import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/svg_icon.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({
    super.key,
    required this.title,
    required this.imageAsset,
    this.items = const [],
  });

  final String title;
  final String imageAsset;
  final List<String> items;

  String get itemsConcat {
    final buffer = StringBuffer();

    for (var i = 0; i < items.length; i++) {
      buffer.write(items[i]);
      if (i < items.length - 1) buffer.write(', ');
    }

    return buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 300,
        height: 320,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgIcon.s50(
              imageAsset,
              key: const ValueKey('skillsCardIcon'),
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(height: 32),
            AppText.headline6(
              title,
              key: const ValueKey('skillsCardTitle'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            AppText.body2(
              itemsConcat,
              key: const ValueKey('skillsCardItemsConcat'),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
