import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';
import 'package:portfolio_two/resources/colors/colors.dart';
import 'package:portfolio_two/resources/constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AboutView();
  }
}

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return LayoutWidget(
      key: const ValueKey('aboutPageLayoutWidget'),
      padding:
          EdgeInsets.symmetric(horizontal: width * .2, vertical: height * .2),
      backgroundColor: context.colors.accent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText.headline4(
            "Hi, I'm Mathiew. Nice to meet you.",
            key: const ValueKey('aboutPageTitle'),
            textAlign: TextAlign.center,
            color: context.colors.labelSecondary.withOpacity(.7),
          ),
          const SizedBox(height: 24),
          AppText.headline5(
            'Since beginning my journey as a software developer around '
            '${AppConstants.yearsOfWork} years ago, I have done remote work '
            'for companies, consulted for startups, and collaborated with '
            'talented people to create digital products for both business '
            'and consumer use. I am very out-going, curious by nature, and '
            'a problem solver.',
            key: const ValueKey('aboutPageSubtitle'),
            textAlign: TextAlign.center,
            color: context.colors.labelSecondary.withOpacity(.7),
          ),
        ],
      ),
    );
  }
}
