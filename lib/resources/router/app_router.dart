import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_two/presentation/features/counter/counter.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(page: CounterPage, initial: true),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
