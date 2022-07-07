import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_two/presentation/features/home/cubit/home_cubit.dart';
import 'package:portfolio_two/presentation/features/skills/widgets/skills_card.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';

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
    final skills = context.watch<HomeCubit>().state.skills;

    return LayoutWidget(
      key: const ValueKey('skillsPageLayoutWidget'),
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: width * .1),
      child: Wrap(
        spacing: 16,
        runSpacing: 24,
        alignment: WrapAlignment.center,
        children: skills
            .map(
              (e) => SkillsCard(
                skills: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
