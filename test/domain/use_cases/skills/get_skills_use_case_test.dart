import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/skills/skills_response.dart';
import 'package:portfolio_two/data/repositories/skills/data_sources/skills_exceptions.dart';
import 'package:portfolio_two/data/repositories/skills/skills_repository.dart';
import 'package:portfolio_two/domain/models/skills/skills.dart';
import 'package:portfolio_two/domain/use_cases/skills/get_skills_use_case.dart';

class MockSkillsRepository extends Mock implements SkillsRepository {}

void main() {
  late MockSkillsRepository mockSkillsRepository;
  late GetSkillsUseCase getSkillsUseCase;

  setUp(() {
    mockSkillsRepository = MockSkillsRepository();
    getSkillsUseCase = GetSkillsUseCase(
      mockSkillsRepository,
    );
  });

  group('GetSkillsUseCase', () {
    test(
      'should return an [List<Skills>] model when successful',
      () async {
        when(
          () => mockSkillsRepository.getSkills(),
        ).thenAnswer(
          (_) async => [SkillsResponse.mock()],
        );

        final expectedResult = [SkillsResponse.mock().skills];
        final result = await getSkillsUseCase.run();

        expect(result, equals(expectedResult));
      },
    );

    test('should rethrow the repository error when it occurs', () async {
      when(
        () => mockSkillsRepository.getSkills(),
      ).thenThrow(
        const GetSkillsException('', StackTrace.empty),
      );

      expect(
        () => getSkillsUseCase.run(),
        throwsA(isA<SkillsException>()),
      );
    });
  });
}
