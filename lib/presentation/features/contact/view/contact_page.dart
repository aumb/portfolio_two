import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/animated_circular_icon_button.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';
import 'package:portfolio_two/resources/assets/custom_icons.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ContactView();
  }
}

class ContactView extends StatelessWidget {
  const ContactView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return LayoutWidget(
      key: const ValueKey('contactPageLayoutWidget'),
      padding: EdgeInsets.symmetric(horizontal: width * 0.2),
      height: height * .8,
      backgroundColor: context.colors.accent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText.headline4(
            'Living and learning one day at a time.',
            key: const ValueKey('contactPageTitle'),
            color: context.colors.labelSecondary.withOpacity(.54),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 44),
          AppText.headline5(
            'Get in touch',
            key: const ValueKey('contactPageSubTitle'),
            color: context.colors.labelSecondary.withOpacity(.7),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            runSpacing: 8,
            children: [
              AnimatedCircularIconButton(
                key: const ValueKey('githubIconButton'),
                iconAsset: CustomIcons.github,
                onPressed: () {},
              ),
              AnimatedCircularIconButton(
                key: const ValueKey('linkedinIconButton'),
                iconAsset: CustomIcons.linkedin,
                onPressed: () {},
              ),
              AnimatedCircularIconButton(
                key: const ValueKey('mailIconButton'),
                iconAsset: CustomIcons.mail,
                onPressed: () {},
              ),
              AnimatedCircularIconButton(
                key: const ValueKey('fbIconButton'),
                iconAsset: CustomIcons.facebook,
                onPressed: () {},
              ),
              AnimatedCircularIconButton(
                key: const ValueKey('instaIconButton'),
                iconAsset: CustomIcons.instagram,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
