import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/about/about_response.dart';
import 'package:portfolio_two/data/repositories/about/about_repository.dart';
import 'package:portfolio_two/data/repositories/about/data_sources/about_exceptions.dart';
import 'package:portfolio_two/domain/models/about/about.dart';
import 'package:portfolio_two/domain/use_cases/about/get_about_use_case.dart';

class MockAboutRepository extends Mock implements AboutRepository {}

void main() {
  late MockAboutRepository mockAboutRepository;
  late GetAboutUseCase getAboutUseCase;

  setUp(() {
    mockAboutRepository = MockAboutRepository();
    getAboutUseCase = GetAboutUseCase(
      mockAboutRepository,
    );
  });

  group('GetAboutUseCase', () {
    test(
      'should return an [About] model when successful',
      () async {
        when(
          () => mockAboutRepository.getAbout(),
        ).thenAnswer(
          (_) async => AboutResponse.mock(),
        );

        final expectedResult = AboutResponse.mock().about;
        final result = await getAboutUseCase.run();

        expect(result, equals(expectedResult));
      },
    );

    test('should rethrow the repository error when it occurs', () async {
      when(
        () => mockAboutRepository.getAbout(),
      ).thenThrow(
        const GetAboutException('', StackTrace.empty),
      );

      expect(
        () => getAboutUseCase.run(),
        throwsA(isA<AboutException>()),
      );
    });
  });
}
