// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio_two/presentation/features/home/home.dart';
import 'package:portfolio_two/presentation/features/introduction/introduction.dart';
import 'package:portfolio_two/resources/dependecy_manager/dependecy_manager.dart';

import '../../../helpers/helpers.dart';

void main() {
  setUp(() async {
    await DependecyManager.inject(fromTest: true);
  });

  tearDown(() {
    GetIt.instance.reset();
  });

  group('HomePage', () {
    testWidgets('renders HomeView', (tester) async {
      await tester.pumpApp();
      await tester.pumpAndSettle();

      expect(find.byType(HomeView), findsOneWidget);
    });

    testWidgets('renders IntroductionPage', (tester) async {
      await tester.pumpApp();
      await tester.pumpAndSettle();

      expect(find.byType(IntroductionPage), findsOneWidget);
    });
  });
}
