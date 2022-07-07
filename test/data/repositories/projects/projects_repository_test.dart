import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/projects/project_response.dart';
import 'package:portfolio_two/data/repositories/projects/data_sources/projects_exceptions.dart';
import 'package:portfolio_two/data/repositories/projects/data_sources/projects_remote_data_source.dart';
import 'package:portfolio_two/data/repositories/projects/projects_repository.dart';

class MockProjectsRemoteDataSource extends Mock
    implements ProjectsRemoteDataSource {}

void main() {
  late MockProjectsRemoteDataSource mockProjectsRemoteDataSource;
  late ProjectsRepository projectsRepository;

  setUp(() {
    mockProjectsRemoteDataSource = MockProjectsRemoteDataSource();
    projectsRepository = ProjectsRepository(mockProjectsRemoteDataSource);
  });

  group('getProjects', () {
    test('should return [ProjectResponse] when successful', () async {
      when(
        () => mockProjectsRemoteDataSource.getProjects(),
      ).thenAnswer(
        (_) async => [ProjectResponse.mock()],
      );

      final result = await projectsRepository.getProjects();

      expect(result, equals([ProjectResponse.mock()]));
    });

    test('should rethrow the remote data source error when it occurs',
        () async {
      when(
        () => mockProjectsRemoteDataSource.getProjects(),
      ).thenThrow(const GetProjectsException('', StackTrace.empty));

      expect(
        () => projectsRepository.getProjects(),
        throwsA(isA<ProjectsException>()),
      );
    });
  });
}
