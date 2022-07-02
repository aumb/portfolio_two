import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';
import 'package:portfolio_two/presentation/widgets/profile_image.dart';
import 'package:portfolio_two/resources/assets/custom_images.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IntroductionView();
  }
}

class IntroductionView extends StatelessWidget {
  const IntroductionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 56),
            AppText.headline4(
              'Software developer',
              key: const ValueKey('introductionPageTitle'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            AppText.headline5(
              'I design and code beautifully simple things, and I love what '
              'I do',
              key: const ValueKey('introductionPageSubtitle'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 56),
            const ProfileImage(url: ''),
            const SizedBox(height: 32),
            Expanded(
              child: Container(
                key: const ValueKey('introductionIllustrationWidget'),
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  CustomImages.illustraion,
                  width: 600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
