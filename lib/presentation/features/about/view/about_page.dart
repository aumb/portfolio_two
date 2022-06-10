import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

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
      padding:
          EdgeInsets.symmetric(horizontal: width * .2, vertical: height * .2),
      backgroundColor: context.colors.accent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText.headline4(
            'text',
            key: const ValueKey('aboutPageTitle'),
            textAlign: TextAlign.center,
            color: context.colors.labelSecondary.withOpacity(.7),
          ),
          const SizedBox(height: 24),
          AppText.headline5(
            'text2',
            key: const ValueKey('aboutPageSubtitle'),
            textAlign: TextAlign.center,
            color: context.colors.labelSecondary.withOpacity(.7),
          ),
        ],
      ),
    );
  }
}
