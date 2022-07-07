import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/projects/project_response.dart';
import 'package:portfolio_two/data/repositories/projects/data_sources/projects_exceptions.dart';
import 'package:portfolio_two/data/repositories/projects/data_sources/projects_remote_data_source.dart';

import '../../../../helpers/firestore_mocks.dart';

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockQuerySnapshot mockQuerySnapshot;
  late MockQuery mockQuery;
  late ProjectsRemoteDataSource projectsRemoteDataSource;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockQuery = MockQuery();
    mockQuerySnapshot = MockQuerySnapshot();

    projectsRemoteDataSource = ProjectsRemoteDataSource(mockFirebaseFirestore);

    when(() => mockFirebaseFirestore.collection('projects')).thenAnswer(
      (_) => mockCollectionReference,
    );
    when(() => mockCollectionReference.orderBy('index'))
        .thenAnswer((_) => mockQuery);
    when(() => mockQuery.get()).thenAnswer((_) async => mockQuerySnapshot);
  });

  group('ProjectsRemoteDataSource', () {
    group('geProjects', () {
      final projectsResponseList = [ProjectResponse.mock()];
      final queryDocumentSnapshots =
          projectsResponseList.map((projectsResponse) {
        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();
        when(mockQueryDocumentSnapshot.data).thenReturn(
          projectsResponse.toJson(),
        );
        return mockQueryDocumentSnapshot;
      }).toList();

      test('should return [ProjectResponse] when successful', () async {
        when(() => mockQuerySnapshot.docs).thenReturn(queryDocumentSnapshots);

        final result = await projectsRemoteDataSource.getProjects();

        expect(
          result,
          equals([ProjectResponse.mock()]),
        );
      });

      test(
          'should throw ProjectDeserializationException when Exception '
          'occurs during deserialization', () async {
        final projectDataMalformed = <String, dynamic>{
          'description': 'description',
        };

        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();

        when(() => mockQuerySnapshot.docs)
            .thenReturn([mockQueryDocumentSnapshot]);
        when(mockQueryDocumentSnapshot.data).thenReturn(projectDataMalformed);

        final result = projectsRemoteDataSource.getProjects();

        expect(
          () => result,
          throwsA(isA<ProjectDeserializationException>()),
        );
      });

      test(
          'throws GetProjectsException when Exception occurs '
          'when trying to retrieve information from firestore', () async {
        when(() => mockFirebaseFirestore.collection('projects'))
            .thenThrow(Exception());

        final result = projectsRemoteDataSource.getProjects();

        expect(
          () => result,
          throwsA(isA<GetProjectsException>()),
        );
      });
    });
  });
}
