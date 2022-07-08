import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/repositories/authentication/data_sources/authentication_exception.dart';

@LazySingleton()
class AuthenticationRemoteDataSource {
  AuthenticationRemoteDataSource(
    this._firebaseAuth,
  );

  final FirebaseAuth _firebaseAuth;

  Future<void> signInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
    } catch (e, s) {
      throw SignInAnonymouslyException(e, s);
    }
  }
}
