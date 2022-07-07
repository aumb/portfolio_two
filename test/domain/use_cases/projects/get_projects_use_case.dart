import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/projects/project_response.dart';
import 'package:portfolio_two/data/repositories/projects/data_sources/projects_exceptions.dart';
import 'package:portfolio_two/data/repositories/projects/projects_repository.dart';
import 'package:portfolio_two/domain/models/projects/project.dart';
import 'package:portfolio_two/domain/use_cases/projects/get_projects_use_case.dart';

class MockProjectsRepository extends Mock implements ProjectsRepository {}

void main() {
  late MockProjectsRepository mockProjectsRepository;
  late GetProjectsUseCase getProjectsUseCase;

  setUp(() {
    mockProjectsRepository = MockProjectsRepository();
    getProjectsUseCase = GetProjectsUseCase(
      mockProjectsRepository,
    );
  });

  group('GetProjectsUseCase', () {
    test(
      'should return an [List<Projects>] model when successful',
      () async {
        when(
          () => mockProjectsRepository.getProjects(),
        ).thenAnswer(
          (_) async => [ProjectResponse.mock()],
        );

        final expectedResult = [ProjectResponse.mock().project];
        final result = await getProjectsUseCase.run();

        expect(result, equals(expectedResult));
      },
    );

    test('should rethrow the repository error when it occurs', () async {
      when(
        () => mockProjectsRepository.getProjects(),
      ).thenThrow(
        const GetProjectsException('', StackTrace.empty),
      );

      expect(
        () => getProjectsUseCase.run(),
        throwsA(isA<ProjectsException>()),
      );
    });
  });
}
