// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CounterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CounterPage());
    }
  };

  @override
  List<RouteConfig> get routes => [RouteConfig(CounterRoute.name, path: '/')];
}

/// generated route for
/// [CounterPage]
class CounterRoute extends PageRouteInfo<void> {
  const CounterRoute() : super(CounterRoute.name, path: '/');

  static const String name = 'CounterRoute';
}
