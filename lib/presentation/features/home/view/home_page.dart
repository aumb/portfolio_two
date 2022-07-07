import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_two/presentation/features/about/about.dart';
import 'package:portfolio_two/presentation/features/contact/contact.dart';
import 'package:portfolio_two/presentation/features/home/cubit/home_cubit.dart';
import 'package:portfolio_two/presentation/features/introduction/introduction.dart';
import 'package:portfolio_two/presentation/features/projects/projects.dart';
import 'package:portfolio_two/presentation/features/skills/skills.dart';
import 'package:portfolio_two/presentation/features/work/work.dart';

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
    final status = context.select((HomeCubit c) => c.state.status);

    return Scaffold(
      body: status.maybeMap(
        loading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loaded: (_) => ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: const [
            IntroductionPage(),
            AboutPage(),
            SkillsPage(),
            ProjectsPage(),
            WorkPage(),
            ContactPage(),
          ],
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
