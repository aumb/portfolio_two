import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/introduction/introduction_response.dart';
import 'package:portfolio_two/data/repositories/introduction/data_sources/introduction_exceptions.dart';
import 'package:portfolio_two/data/repositories/introduction/introduction_repository.dart';
import 'package:portfolio_two/domain/models/introduction/introduction.dart';
import 'package:portfolio_two/domain/use_cases/introduction/get_introduction_use_case.dart';

class MockIntroductionRepository extends Mock
    implements IntroductionRepository {}

void main() {
  late MockIntroductionRepository mockIntroductionRepository;
  late GetIntroductionUseCase getIntroductionUseCase;

  setUp(() {
    mockIntroductionRepository = MockIntroductionRepository();
    getIntroductionUseCase = GetIntroductionUseCase(
      mockIntroductionRepository,
    );
  });

  group('GetIntroductionUseCase', () {
    test(
      'should return an [Introduction] model when successful',
      () async {
        when(
          () => mockIntroductionRepository.getInformation(),
        ).thenAnswer(
          (_) async => IntroductionResponse.mock(),
        );

        final expectedResult = IntroductionResponse.mock().introduction;
        final result = await getIntroductionUseCase.run();

        expect(result, equals(expectedResult));
      },
    );

    test('should rethrow the repository error when it occurs', () async {
      when(
        () => mockIntroductionRepository.getInformation(),
      ).thenThrow(
        const GetIntroductionException('', StackTrace.empty),
      );

      expect(
        () => getIntroductionUseCase.run(),
        throwsA(isA<IntroductionException>()),
      );
    });
  });
}
