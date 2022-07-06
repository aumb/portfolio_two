import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/work/work_response.dart';
import 'package:portfolio_two/data/repositories/work/data_sources/work_exceptions.dart';
import 'package:portfolio_two/data/repositories/work/data_sources/work_remote_data_source.dart';

import '../../../../helpers/firestore_mocks.dart';

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockQuerySnapshot mockQuerySnapshot;
  late MockQuery mockQuery;
  late WorkRemoteDataSource workRemoteDataSource;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockQuery = MockQuery();
    mockQuerySnapshot = MockQuerySnapshot();

    workRemoteDataSource = WorkRemoteDataSource(mockFirebaseFirestore);

    when(() => mockFirebaseFirestore.collection('work')).thenAnswer(
      (_) => mockCollectionReference,
    );
    when(() => mockCollectionReference.orderBy('endDate'))
        .thenAnswer((_) => mockQuery);
    when(() => mockQuery.get()).thenAnswer((_) async => mockQuerySnapshot);
  });

  group('WorkRemoteDataSource', () {
    group('geWork', () {
      final workResponseList = [WorkResponse.mock()];
      final queryDocumentSnapshots = workResponseList.map((workResponse) {
        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();
        when(mockQueryDocumentSnapshot.data).thenReturn(
          workResponse.toJson(),
        );
        return mockQueryDocumentSnapshot;
      }).toList();

      test('should return [WorkResponse] when successful', () async {
        when(() => mockQuerySnapshot.docs).thenReturn(queryDocumentSnapshots);

        final result = await workRemoteDataSource.getWork();

        expect(
          result,
          equals([WorkResponse.mock()]),
        );
      });

      test(
          'should throw WorkDeserializationException when Exception '
          'occurs during deserialization', () async {
        final workDataMalformed = <String, dynamic>{
          'title': 'title',
        };

        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();

        when(() => mockQuerySnapshot.docs)
            .thenReturn([mockQueryDocumentSnapshot]);
        when(mockQueryDocumentSnapshot.data).thenReturn(workDataMalformed);

        final result = workRemoteDataSource.getWork();

        expect(
          () => result,
          throwsA(isA<WorkDeserializationException>()),
        );
      });

      test(
          'throws GetWorkException when Exception occurs '
          'when trying to retrieve information from firestore', () async {
        when(() => mockFirebaseFirestore.collection('work'))
            .thenThrow(Exception());

        final result = workRemoteDataSource.getWork();

        expect(
          () => result,
          throwsA(isA<GetWorkException>()),
        );
      });
    });
  });
}
