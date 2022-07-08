// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_two/presentation/features/home/cubit/home_cubit.dart';
import 'package:portfolio_two/resources/dependecy_manager/injector.dart';
import 'package:portfolio_two/resources/l10n/l10n.dart';
import 'package:portfolio_two/resources/router/router.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp({
    AppRouter? router,
    HomeCubit? homeCubit,
  }) {
    final _router = router ?? AppRouter();
    final _homeCubit = homeCubit ?? injector<HomeCubit>();

    return pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<HomeCubit>(
            create: (BuildContext context) => _homeCubit..init(),
          ),
        ],
        child: MaterialApp.router(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routerDelegate: _router.delegate(),
          routeInformationParser: _router.defaultRouteParser(),
        ),
      ),
    );
  }
}
