import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/skills/skills_response.dart';
import 'package:portfolio_two/data/repositories/skills/data_sources/skills_exceptions.dart';
import 'package:portfolio_two/data/repositories/skills/data_sources/skills_remote_data_source.dart';

import '../../../../helpers/firestore_mocks.dart';

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockQuerySnapshot mockQuerySnapshot;
  late MockQuery mockQuery;
  late SkillsRemoteDataSource skillsRemoteDataSource;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockQuery = MockQuery();
    mockQuerySnapshot = MockQuerySnapshot();

    skillsRemoteDataSource = SkillsRemoteDataSource(mockFirebaseFirestore);

    when(() => mockFirebaseFirestore.collection('skills')).thenAnswer(
      (_) => mockCollectionReference,
    );
    when(() => mockCollectionReference.orderBy('index'))
        .thenAnswer((_) => mockQuery);
    when(() => mockQuery.get()).thenAnswer((_) async => mockQuerySnapshot);
  });

  group('SkillsRemoteDataSource', () {
    group('geSkills', () {
      final skillsResponseList = [SkillsResponse.mock()];
      final queryDocumentSnapshots = skillsResponseList.map((skillsResponse) {
        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();
        when(mockQueryDocumentSnapshot.data).thenReturn(
          skillsResponse.toJson(),
        );
        return mockQueryDocumentSnapshot;
      }).toList();

      test('should return [SkillsResponse] when successful', () async {
        when(() => mockQuerySnapshot.docs).thenReturn(queryDocumentSnapshots);

        final result = await skillsRemoteDataSource.getSkills();

        expect(
          result,
          equals([SkillsResponse.mock()]),
        );
      });

      test(
          'should throw SkillsDeserializationException when Exception '
          'occurs during deserialization', () async {
        final skillsDataMalformed = <String, dynamic>{
          'title': 'title',
          'index': 1,
          'itemz': ['item1', 'item2', 'item3'],
        };

        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();

        when(() => mockQuerySnapshot.docs)
            .thenReturn([mockQueryDocumentSnapshot]);
        when(mockQueryDocumentSnapshot.data).thenReturn(skillsDataMalformed);

        final result = skillsRemoteDataSource.getSkills();

        expect(
          () => result,
          throwsA(isA<SkillsDeserializationException>()),
        );
      });

      test(
          'throws GetSkillsException when Exception occurs '
          'when trying to retrieve information from firestore', () async {
        when(() => mockFirebaseFirestore.collection('skills'))
            .thenThrow(Exception());

        final result = skillsRemoteDataSource.getSkills();

        expect(
          () => result,
          throwsA(isA<GetSkillsException>()),
        );
      });
    });
  });
}
