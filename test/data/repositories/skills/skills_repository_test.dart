import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/skills/skills_response.dart';
import 'package:portfolio_two/data/repositories/skills/data_sources/skills_exceptions.dart';
import 'package:portfolio_two/data/repositories/skills/data_sources/skills_remote_data_source.dart';
import 'package:portfolio_two/data/repositories/skills/skills_repository.dart';

class MockSkillsRemoteDataSource extends Mock
    implements SkillsRemoteDataSource {}

void main() {
  late MockSkillsRemoteDataSource mockSkillsRemoteDataSource;
  late SkillsRepository skillsRepository;

  setUp(() {
    mockSkillsRemoteDataSource = MockSkillsRemoteDataSource();
    skillsRepository = SkillsRepository(mockSkillsRemoteDataSource);
  });

  group('getSkills', () {
    test('should return [SkillsResponse] when successful', () async {
      when(
        () => mockSkillsRemoteDataSource.getSkills(),
      ).thenAnswer(
        (_) async => [SkillsResponse.mock()],
      );

      final result = await skillsRepository.getSkills();

      expect(result, equals([SkillsResponse.mock()]));
    });

    test('should rethrow the remote data source error when it occurs',
        () async {
      when(
        () => mockSkillsRemoteDataSource.getSkills(),
      ).thenThrow(const GetSkillsException('', StackTrace.empty));

      expect(
        () => skillsRepository.getSkills(),
        throwsA(isA<SkillsException>()),
      );
    });
  });
}
