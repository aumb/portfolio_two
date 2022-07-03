import 'package:flutter/material.dart';
import 'package:portfolio_two/domain/models/project.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/card_button.dart';
import 'package:url_launcher/url_launcher.dart';

const _width = 370.0;
const _height = 315.0;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: _width,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: _height / 2,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    project.imageUrl,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(31, 24, 35, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body1(project.description),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      CardButton(
                        label: 'view',
                        onPressed: () =>
                            launchUrl(Uri.parse(project.url ?? '')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
