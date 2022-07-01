import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/features/skills/widgets/skills_card.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';
import 'package:portfolio_two/resources/assets/custom_icons.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SkillsView();
  }
}

class SkillsView extends StatelessWidget {
  const SkillsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return LayoutWidget(
      key: const ValueKey('skillsPageLayoutWidget'),
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: width * .1),
      child: Wrap(
        spacing: 16,
        runSpacing: 24,
        alignment: WrapAlignment.center,
        children: const <Widget>[
          SkillsCard(
            title: 'Languages',
            imageAsset: CustomIcons.languages,
            items: ['test,test1,test2,'],
          ),
          SkillsCard(
            title: 'Tools',
            imageAsset: CustomIcons.tools,
            items: ['test,test1,test2,'],
          ),
          SkillsCard(
            title: 'Frameworks',
            imageAsset: CustomIcons.frameworks,
            items: ['test,test1,test2,'],
          ),
        ],
      ),
    );
  }
}
