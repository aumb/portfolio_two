import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/repositories/authentication/authentication_repository.dart';
import 'package:portfolio_two/data/repositories/authentication/data_sources/authentication_exception.dart';
import 'package:portfolio_two/domain/use_cases/authentication/sign_in_anonymously_use_case.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

void main() {
  late MockAuthenticationRepository mockAuthenticationRepository;
  late SignInAnonymouslyUseCase signInAnonymouslyUseCase;

  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    signInAnonymouslyUseCase = SignInAnonymouslyUseCase(
      mockAuthenticationRepository,
    );
  });

  group('SignInAnonymouslyUseCase', () {
    test(
      'should call the repository function',
      () async {
        when(
          () => mockAuthenticationRepository.signInAnonymously(),
        ).thenAnswer(
          (_) async {},
        );

        await signInAnonymouslyUseCase.run();

        verify(() => mockAuthenticationRepository.signInAnonymously());
      },
    );

    test('should complete', () async {
      when(
        () => mockAuthenticationRepository.signInAnonymously(),
      ).thenAnswer((_) async {});

      final result = signInAnonymouslyUseCase.run();
      expect(result, completes);
    });

    test('should rethrow the repository error when it occurs', () async {
      when(
        () => mockAuthenticationRepository.signInAnonymously(),
      ).thenThrow(
        const SignInAnonymouslyException('', StackTrace.empty),
      );

      expect(
        () => signInAnonymouslyUseCase.run(),
        throwsA(isA<SignInAnonymouslyException>()),
      );
    });
  });
}
