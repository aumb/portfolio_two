// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_two/presentation/features/work/work.dart';

import '../../../helpers/helpers.dart';

void main() {
  Future<void> _setup(WidgetTester tester) async {
    await tester.pumpApp();
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.byType(WorkPage),
      500,
    );
  }

  setUpAll(() => HttpOverrides.global = null);

  group('WorkPage', () {
    testWidgets('renders WorkView', (tester) async {
      await _setup(tester);

      expect(find.byType(WorkView), findsOneWidget);
    });

    testWidgets('renders LayoutWidget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(
          const Key('workPageLayoutWidget'),
        ),
        findsOneWidget,
      );
    });

    testWidgets('renders 3 WorkCards', (tester) async {
      await _setup(tester);

      expect(
        find.byType(WorkCard),
        findsNWidgets(3),
      );
    });
  });
}
