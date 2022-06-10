import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/features/about/about.dart';
import 'package:portfolio_two/presentation/features/introduction/introduction.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: const [
            IntroductionPage(),
            AboutPage(),
          ],
        ),
      ),
    );
  }
}
