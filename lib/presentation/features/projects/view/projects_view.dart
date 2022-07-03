import 'package:flutter/material.dart';
import 'package:portfolio_two/domain/models/project.dart';
import 'package:portfolio_two/presentation/features/projects/widgets/project_card.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';
import 'package:portfolio_two/resources/assets/custom_images.dart';
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

    final projects = <ProjectCard>[
      const ProjectCard(
        project: Project(
          imageUrl: CustomImages.marineWatch,
          description: 'An application to track marine sightings',
          status: ProjectStatus.completed,
          url: 'https://github.com/aumb/marine_watch',
        ),
      ),
      const ProjectCard(
        project: Project(
          imageUrl: CustomImages.rickAndMorty,
          description:
              'An application that explores the rick and morty universe',
          status: ProjectStatus.completed,
          url: 'https://github.com/aumb/rick-and-morty-verse',
        ),
      ),
      const ProjectCard(
        project: Project(
          imageUrl: CustomImages.masonTemplates,
          description:
              'Some templates made for resuing inside a flutter project',
          status: ProjectStatus.completed,
          url: 'https://github.com/aumb/mason_templates',
        ),
      ),
      const ProjectCard(
        project: Project(
          imageUrl: CustomImages.topStories,
          description:
              'An application to get the latest top stories from the NYTimes',
          status: ProjectStatus.completed,
          url: 'https://github.com/aumb/top-stories',
        ),
      ),
      const ProjectCard(
        project: Project(
          imageUrl: CustomImages.illustraion,
          description: 'The web app you are using to view my work',
          status: ProjectStatus.completed,
          url: 'https://github.com/aumb/top-stories',
        ),
      ),
    ];

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
                          (e) => e,
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
