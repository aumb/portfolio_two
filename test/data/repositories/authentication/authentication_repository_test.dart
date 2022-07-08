import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/repositories/authentication/authentication_repository.dart';
import 'package:portfolio_two/data/repositories/authentication/data_sources/authentication_exception.dart';
import 'package:portfolio_two/data/repositories/authentication/data_sources/authentication_remote_data_source.dart';

class MockAuthenticationRemoteDataSource extends Mock
    implements AuthenticationRemoteDataSource {}

void main() {
  late MockAuthenticationRemoteDataSource mockAuthenticationRemoteDataSource;
  late AuthenticationRepository authenticationRepository;

  setUp(() {
    mockAuthenticationRemoteDataSource = MockAuthenticationRemoteDataSource();
    authenticationRepository =
        AuthenticationRepository(mockAuthenticationRemoteDataSource);
  });

  group('AuthenticationRepository', () {
    group('signInAnonymously', () {
      test('should call the data source function', () async {
        when(
          () => mockAuthenticationRemoteDataSource.signInAnonymously(),
        ).thenAnswer((_) async {});

        await authenticationRepository.signInAnonymously();

        verify(() => mockAuthenticationRemoteDataSource.signInAnonymously());
      });

      test('should complete', () async {
        when(
          () => mockAuthenticationRemoteDataSource.signInAnonymously(),
        ).thenAnswer((_) async {});

        final result = authenticationRepository.signInAnonymously();
        expect(result, completes);
      });

      test('should rethrow the remote data source error when it occurs',
          () async {
        when(
          () => mockAuthenticationRemoteDataSource.signInAnonymously(),
        ).thenThrow(const SignInAnonymouslyException('', StackTrace.empty));

        expect(
          () => authenticationRepository.signInAnonymously(),
          throwsA(isA<AuthenticationException>()),
        );
      });
    });
  });
}
