import 'package:flutter/material.dart';
import 'package:portfolio_two/domain/models/work.dart';
import 'package:portfolio_two/presentation/features/work/widgets/work_card.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';
import 'package:portfolio_two/resources/assets/custom_images.dart';

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

    final works = [
      WorkCard(
        work: Work(
          companyName: 'Monstarlab EMEA',
          title: 'Senior Flutter Developer I',
          imageUrl: CustomImages.monstarlab,
          startDate: DateTime(2021, 8),
          location: 'Remote • Prague, Czech Republic - Houston, Texas',
          description: '''
Senior Flutter Engineer - Present
---------------
* Responsible for maintaining 2 core flutter packages [NStack](https://github.com/nstack-io/flutter-sdk) and the
[flutter template](https://github.com/monstar-lab-oss/flutter-template)
* Responsible forleading a team of 7 flutter engineers in developing a
cryptocurrency trading platform for a client.
* Responsible for helping teammates, updates, general estimations, task
assignment (including QA), PR merges and CI/CD maintenance.
* Responsible for communications with PMs, designers, backend, QA, and
client when needed.
* Responsible for core code implementations.

Flutter Engineer - January 2022
---------------
* Responsible for developing an entire flutter web admin panel for a client.
* Responsible for communication with the PM, backend, and QA.
''',
        ),
      ),
      WorkCard(
        work: Work(
          companyName: 'Cocoon Creations',
          title: 'Software Engineer',
          imageUrl: CustomImages.cocoonCreations,
          startDate: DateTime(2020, 12),
          endDate: DateTime(2021, 02),
          location: 'Remote • Nicosia, Cyprus',
          description: '''
* Responsible for creating an internal core package used across all flutter
applications. The package contains the network logic and other general
reusable components and logic.
* Responsible for creating the building blocks of the first flutter application used
by the company.
* Working with designers to determine the UX/UI throughout the application.
* Guiding the back-end team through the UX over different feature flows and
helping them navigate through other APIrelated issues.
''',
        ),
      ),
      WorkCard(
        work: Work(
          companyName: 'Layer',
          title: 'Software Engineer',
          imageUrl: CustomImages.layer,
          startDate: DateTime(2019, 12),
          endDate: DateTime(2020, 12),
          location: 'Beirut, Lebanon',
          description: '''
* Responsible forimplementing majorfeatures across 4 banks.
* Responsible for developing some internal flutter packages namely a mobile
number validation package.
* Maintaining existing code.
* Refactoring legacy code.
* Peer code reviews.
* Sprint planning and time estimation.
* Testing, improving, and optimizing the application’s load and network response time
''',
        ),
      ),
      WorkCard(
        work: Work(
          companyName: 'Inbound Horizons Inc.',
          title: 'Software Engineer Intern',
          imageUrl: CustomImages.inboundHorizons,
          startDate: DateTime(2018, 8),
          endDate: DateTime(2018, 12),
          location: 'Beirut, Lebanon',
          description: '''
* Responsible for developing a wordpress website for a client.
* Responsible for implementing features on an internal issue tracker using Cordova.
''',
        ),
      ),
    ];

    return LayoutWidget(
      key: const ValueKey('workPageLayoutWidget'),
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: width * .1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText.headline4('Companies I have worked with'),
          const SizedBox(height: 60),
          Row(
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
        ],
      ),
    );
  }
}
