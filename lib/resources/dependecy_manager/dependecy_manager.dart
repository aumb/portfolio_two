import 'package:portfolio_two/resources/dependecy_manager/injector.dart';

class DependecyManager {
  static Future<void> inject() async {
    await configureDependencies();
  }
}
