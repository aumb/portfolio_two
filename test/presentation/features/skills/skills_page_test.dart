// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_two/presentation/features/skills/skills.dart';

import '../../../helpers/helpers.dart';

void main() {
  Future<void> _setup(WidgetTester tester) async {
    await tester.pumpApp();
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.byType(SkillsPage),
      500,
    );
  }

  group('SkillsPage', () {
    testWidgets('renders SkillsView', (tester) async {
      await _setup(tester);

      expect(find.byType(SkillsView), findsOneWidget);
    });

    testWidgets('renders LayoutWidget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(
          const Key('skillsPageLayoutWidget'),
        ),
        findsOneWidget,
      );
    });

    testWidgets('renders 3 SkillsCards', (tester) async {
      await _setup(tester);

      expect(
        find.byType(SkillsCard),
        findsNWidgets(3),
      );
    });
  });
}
