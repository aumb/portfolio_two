// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio_two/presentation/features/about/about.dart';
import 'package:portfolio_two/resources/dependecy_manager/dependecy_manager.dart';
import '../../../helpers/helpers.dart';

void main() {
  setUp(() async {
    await DependecyManager.inject(fromTest: true);
  });

  tearDown(() {
    GetIt.instance.reset();
  });

  group('AboutPage', () {
    Future<void> _setup(WidgetTester tester) async {
      await tester.pumpApp();
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(
        find.byType(AboutPage),
        500,
      );
    }

    testWidgets('renders AboutView', (tester) async {
      await _setup(tester);

      expect(find.byType(AboutView), findsOneWidget);
    });

    testWidgets('renders LayoutWidget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(
          const Key('aboutPageLayoutWidget'),
        ),
        findsOneWidget,
      );
    });

    testWidgets('renders Title Widget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(const Key('aboutPageTitle')),
        findsOneWidget,
      );
    });

    testWidgets('renders Subtitle widget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(const Key('aboutPageSubtitle')),
        findsOneWidget,
      );
    });
  });
}
