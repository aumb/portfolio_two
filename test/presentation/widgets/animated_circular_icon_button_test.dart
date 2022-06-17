// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_two/presentation/widgets/animated_circular_icon_button.dart';
import 'package:portfolio_two/presentation/widgets/circular_icon_button.dart';
import 'package:portfolio_two/resources/assets/custom_icons.dart';
import 'package:portfolio_two/resources/colors/colors.dart';

void main() {
  group('AnimatedCircularIconButton', () {
    Future<void> _setup(WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AnimatedCircularIconButton(
              iconAsset: CustomIcons.facebook,
              onPressed: () {},
            ),
          ),
        ),
      );
    }

    testWidgets('renders different colors when hovered', (tester) async {
      await _setup(tester);

      expect(
        find.byWidgetPredicate(
          (Widget widget) =>
              widget is CircularIconButton &&
              widget.backgroundColor == CustomColors.colorsDark.accent &&
              widget.iconColor == CustomColors.colorsDark.card,
        ),
        findsOneWidget,
      );

      expect(
        find.byWidgetPredicate(
          (Widget widget) =>
              widget is CircularIconButton &&
              widget.backgroundColor == CustomColors.colorsDark.card &&
              widget.iconColor == CustomColors.colorsDark.accent,
        ),
        findsNothing,
      );

      final gesture = await tester.createGesture(kind: PointerDeviceKind.mouse);
      await gesture.addPointer(location: Offset.zero);
      addTearDown(gesture.removePointer);
      await tester.pump();
      await gesture.moveTo(
        tester.getCenter(
          find.byType(AnimatedCircularIconButton),
        ),
      );
      await tester.pumpAndSettle();

      expect(
        find.byWidgetPredicate(
          (Widget widget) =>
              widget is CircularIconButton &&
              widget.backgroundColor == CustomColors.colorsDark.accent &&
              widget.iconColor == CustomColors.colorsDark.card,
        ),
        findsNothing,
      );

      expect(
        find.byWidgetPredicate(
          (Widget widget) =>
              widget is CircularIconButton &&
              widget.backgroundColor == CustomColors.colorsDark.card &&
              widget.iconColor == CustomColors.colorsDark.accent,
        ),
        findsOneWidget,
      );
    });
  });
}
