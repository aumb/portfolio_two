import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_two/presentation/features/home/cubit/home_cubit.dart';
import 'package:portfolio_two/presentation/features/projects/widgets/project_card.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProjectsView();
  }
}

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final projects = context.watch<HomeCubit>().state.projects;

    return LayoutWidget(
      key: const ValueKey('projectsPageLayoutWidget'),
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: width * .1),
      backgroundColor: context.colors.accent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText.headline4(
            'My recent work',
            color: context.colors.labelSecondary.withOpacity(.7),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 24,
                    children: projects
                        .map(
                          (e) => ProjectCard(
                            project: e,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
