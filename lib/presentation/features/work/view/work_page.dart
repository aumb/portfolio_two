import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_two/presentation/features/home/cubit/home_cubit.dart';
import 'package:portfolio_two/presentation/features/work/widgets/work_card.dart';
import 'package:portfolio_two/presentation/widgets/app_text.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';

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
    final works = context.watch<HomeCubit>().state.work;

    return LayoutWidget(
      key: const ValueKey('workPageLayoutWidget'),
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: width * .1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText.headline4(
            'Companies I have worked with',
            textAlign: TextAlign.center,
          ),
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
                          (e) => WorkCard(
                            work: e,
                          ),
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
