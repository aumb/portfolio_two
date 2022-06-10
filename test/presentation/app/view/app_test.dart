// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_two/presentation/app/app.dart';
import 'package:portfolio_two/presentation/features/home/home.dart';
import 'package:portfolio_two/resources/router/router.dart';

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      final _router = AppRouter();

      await tester.pumpWidget(
        App(
          router: _router,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
