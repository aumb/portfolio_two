// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio_two/presentation/features/contact/contact.dart';
import 'package:portfolio_two/presentation/widgets/animated_circular_icon_button.dart';
import 'package:portfolio_two/resources/dependecy_manager/dependecy_manager.dart';
import '../../../helpers/helpers.dart';

void main() {
  setUp(() async {
    await DependecyManager.inject(fromTest: true);
  });

  tearDown(() {
    GetIt.instance.reset();
  });

  group('ContactPage', () {
    Future<void> _setup(WidgetTester tester) async {
      await tester.pumpApp();
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(
        find.byType(ContactPage),
        500,
      );
    }

    testWidgets('renders ContactView', (tester) async {
      await _setup(tester);

      expect(find.byType(ContactView), findsOneWidget);
    });

    testWidgets('renders LayoutWidget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(
          const Key('contactPageLayoutWidget'),
        ),
        findsOneWidget,
      );
    });

    testWidgets('renders Title Widget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(const Key('contactPageTitle')),
        findsOneWidget,
      );
    });

    testWidgets('renders Subtitle widget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(const Key('contactPageSubTitle')),
        findsOneWidget,
      );
    });

    testWidgets('renders 5 AnimatedCircularIconButton widgets', (tester) async {
      await _setup(tester);

      expect(
        find.byType(AnimatedCircularIconButton),
        findsNWidgets(5),
      );
    });
  });
}
