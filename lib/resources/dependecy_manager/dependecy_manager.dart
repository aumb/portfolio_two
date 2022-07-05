import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

import 'package:portfolio_two/resources/dependecy_manager/injector.dart';

class DependecyManager {
  static Future<void> inject({
    bool fromTest = false,
  }) async {
    injector.registerSingleton<FirebaseFirestore>(
      fromTest ? FakeFirebaseFirestore() : FirebaseFirestore.instance,
    );

    await configureDependencies();
  }
}
