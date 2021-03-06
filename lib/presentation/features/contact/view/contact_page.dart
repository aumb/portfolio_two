import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_two/domain/models/contact/contact.dart';
import 'package:portfolio_two/presentation/features/home/cubit/home_cubit.dart';
import 'package:portfolio_two/presentation/widgets/animated_circular_icon_button.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';
import 'package:portfolio_two/resources/assets/custom_icons.dart';
import 'package:portfolio_two/resources/colors/colors.dart';
import 'package:portfolio_two/resources/constants.dart';
import 'package:url_launcher/url_launcher.dart';

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
    final contact = context.watch<HomeCubit>().state.contact;

    return LayoutWidget(
      key: const ValueKey('contactPageLayoutWidget'),
      padding: EdgeInsets.symmetric(horizontal: width * .2),
      height: height * .8,
      backgroundColor: context.colors.accent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText.headline4(
            contact.title,
            key: const ValueKey('contactPageTitle'),
            color: context.colors.labelSecondary.withOpacity(.54),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 44),
          AppText.headline5(
            contact.subtitle,
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
              if (contact.showGithub)
                AnimatedCircularIconButton(
                  key: const ValueKey('githubIconButton'),
                  iconAsset: CustomIcons.github,
                  onPressed: () => launchUrl(Uri.parse(AppConstants.githubUrl)),
                ),
              if (contact.showLinkedin)
                AnimatedCircularIconButton(
                  key: const ValueKey('linkedinIconButton'),
                  iconAsset: CustomIcons.linkedin,
                  onPressed: () =>
                      launchUrl(Uri.parse(AppConstants.linkedinUrl)),
                ),
              if (contact.showEmail)
                AnimatedCircularIconButton(
                  key: const ValueKey('mailIconButton'),
                  iconAsset: CustomIcons.mail,
                  onPressed: () => launchUrl(
                    Uri(
                      scheme: 'mailto',
                      path: AppConstants.email,
                    ),
                  ),
                ),
              if (contact.showFacebook)
                AnimatedCircularIconButton(
                  key: const ValueKey('fbIconButton'),
                  iconAsset: CustomIcons.facebook,
                  onPressed: () =>
                      launchUrl(Uri.parse(AppConstants.facebookUrl)),
                ),
              if (contact.showInstagram)
                AnimatedCircularIconButton(
                  key: const ValueKey('instaIconButton'),
                  iconAsset: CustomIcons.instagram,
                  onPressed: () =>
                      launchUrl(Uri.parse(AppConstants.instagramUrl)),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
