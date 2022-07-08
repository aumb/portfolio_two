import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_two/data/repositories/authentication/data_sources/authentication_exception.dart';
import 'package:portfolio_two/data/repositories/authentication/data_sources/authentication_remote_data_source.dart';

void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late AuthenticationRemoteDataSource authenticationRemoteDataSource;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    authenticationRemoteDataSource =
        AuthenticationRemoteDataSource(mockFirebaseAuth);
  });

  group('AuthenticationRemoteDataSource', () {
    group('signInAnonymously', () {
      test('should complete', () async {
        final result = authenticationRemoteDataSource.signInAnonymously();

        expect(result, completes);
      });
      test(
          'throws SignInAnonymouslyException when Exception occurs '
          'when trying to retrieve information from firebase auth', () async {
        mockFirebaseAuth = MockFirebaseAuth(
          authExceptions: AuthExceptions(
            signInAnonymously: FirebaseAuthException(code: 'test'),
          ),
        );
        authenticationRemoteDataSource =
            AuthenticationRemoteDataSource(mockFirebaseAuth);

        expect(
          () async => authenticationRemoteDataSource.signInAnonymously(),
          throwsA(isA<SignInAnonymouslyException>()),
        );
      });
    });
  });
}
