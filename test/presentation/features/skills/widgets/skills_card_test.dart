// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/domain/models/skills/skills.dart';
import 'package:portfolio_two/presentation/features/home/cubit/home_cubit.dart';
import 'package:portfolio_two/presentation/features/skills/skills.dart';
import 'package:portfolio_two/resources/dependecy_manager/dependecy_manager.dart';

import '../../../../helpers/helpers.dart';

class MockHomeCubit extends MockCubit<HomeState> implements HomeCubit {}

void main() {
  late MockHomeCubit cubit;

  final _tSkills = [
    Skills.mock(),
    Skills.mock(),
  ];

  setUp(() async {
    await DependecyManager.inject(fromTest: true);
    cubit = MockHomeCubit();
    when(() => cubit.state).thenReturn(
      HomeState.initial().copyWith(
        skills: _tSkills,
        status: const HomeStatus.loaded(),
      ),
    );
    when(() => cubit.init()).thenAnswer((_) async {});
  });

  tearDown(() {
    cubit.close();
    GetIt.instance.reset();
  });

  Future<void> _setup(WidgetTester tester) async {
    await tester.pumpApp(homeCubit: cubit);
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.byType(SkillsPage),
      500,
    );
  }

  setUpAll(() => HttpOverrides.global = null);

  group('SkillsCard', () {
    testWidgets('renders icon', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(
          const Key('skillsCardIcon'),
        ),
        findsNWidgets(_tSkills.length),
      );
    });

    testWidgets('renders title', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(
          const Key('skillsCardTitle'),
        ),
        findsNWidgets(_tSkills.length),
      );
    });

    testWidgets('renders items concated', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(
          const Key('skillsCardItemsConcat'),
        ),
        findsNWidgets(_tSkills.length),
      );
    });
  });
}
