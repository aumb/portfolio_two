import 'package:flutter/material.dart';
import 'package:portfolio_two/domain/models/skills/skills.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/svg_icon.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({
    super.key,
    required this.skills,
  });

  final Skills skills;

  String get itemsConcat {
    final buffer = StringBuffer();

    for (var i = 0; i < skills.items.length; i++) {
      buffer.write(skills.items[i]);
      if (i < skills.items.length - 1) buffer.write(', ');
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
            SvgIcon.network(
              skills.iconUrl,
              key: const ValueKey('skillsCardIcon'),
              color: Theme.of(context).colorScheme.secondary,
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 32),
            AppText.headline6(
              skills.title,
              key: const ValueKey('skillsCardTitle'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Flexible(
              child: AppText.body2(
                itemsConcat,
                key: const ValueKey('skillsCardItemsConcat'),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
