// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_two/presentation/features/introduction/introduction.dart';
import 'package:portfolio_two/presentation/widgets/layout_widget.dart';
import 'package:portfolio_two/presentation/widgets/profile_image.dart';

import '../../../helpers/helpers.dart';

void main() {
  Future<void> _setup(WidgetTester tester) async {
    await tester.pumpApp();
    await tester.pumpAndSettle();
  }

  group('IntroductionPage', () {
    testWidgets('renders IntroductionView', (tester) async {
      await _setup(tester);

      expect(find.byType(IntroductionView), findsOneWidget);
    });

    testWidgets('renders LayoutWidget', (tester) async {
      await _setup(tester);

      expect(find.byType(LayoutWidget), findsOneWidget);
    });

    testWidgets('renders Title Widget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(const Key('introductionPageTitle')),
        findsOneWidget,
      );
    });

    testWidgets('renders Subtitle widget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(const Key('introductionPageSubtitle')),
        findsOneWidget,
      );
    });

    testWidgets('renders ProfileImage', (tester) async {
      await _setup(tester);

      expect(find.byType(ProfileImage), findsOneWidget);
    });

    testWidgets('renders Illustration Widget', (tester) async {
      await _setup(tester);

      expect(
        find.byKey(const Key('introductionIllustrationWidget')),
        findsOneWidget,
      );
    });
  });
}
