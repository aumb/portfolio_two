import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/introduction/introduction_response.dart';
import 'package:portfolio_two/data/repositories/introduction/data_sources/introduction_remote_data_source.dart';
import 'package:portfolio_two/data/repositories/introduction/introduction_exceptions.dart';

import '../../../../helpers/firestore_mocks.dart';

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockQuerySnapshot mockQuerySnapshot;
  late IntroductionRemoteDataSource introductionRemoteDataSource;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockQuerySnapshot = MockQuerySnapshot();

    introductionRemoteDataSource =
        IntroductionRemoteDataSource(mockFirebaseFirestore);

    when(() => mockFirebaseFirestore.collection('introduction')).thenAnswer(
      (_) => mockCollectionReference,
    );
    when(() => mockCollectionReference.get())
        .thenAnswer((_) async => mockQuerySnapshot);
  });

  group('IntroductionRemoteDataSource', () {
    group('geIntroduction', () {
      final introductionResponseList = [IntroductionResponse.mock()];
      final queryDocumentSnapshots =
          introductionResponseList.map((introductionResponse) {
        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();
        when(mockQueryDocumentSnapshot.data).thenReturn(
          introductionResponse.toJson(),
        );
        return mockQueryDocumentSnapshot;
      }).toList();

      test('should return [IntroductionResponse] when successful', () async {
        when(() => mockQuerySnapshot.docs).thenReturn(queryDocumentSnapshots);

        final result = await introductionRemoteDataSource.getInformation();

        expect(
          result,
          equals(IntroductionResponse.mock()),
        );
      });

      test(
          'should throw IntroductionDeserializationException when Exception '
          'occurs during deserialization', () async {
        final introductionDataMalformed = <String, dynamic>{
          'title': 'title',
          'subtitle': 'subtitle',
        };

        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();

        when(() => mockQuerySnapshot.docs)
            .thenReturn([mockQueryDocumentSnapshot]);
        when(mockQueryDocumentSnapshot.data)
            .thenReturn(introductionDataMalformed);

        final result = introductionRemoteDataSource.getInformation();

        expect(
          () => result,
          throwsA(isA<IntroductionDeserializationException>()),
        );
      });

      test(
          'should throw GetIntroductionException when Exception '
          'occurs if doc data is null', () async {
        final introductionDataMalformed = <String, dynamic>{
          'title': 'title',
          'subtitle': 'subtitle',
        };

        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();

        when(() => mockQuerySnapshot.docs)
            .thenReturn([mockQueryDocumentSnapshot]);
        when(mockQueryDocumentSnapshot.data)
            .thenReturn(introductionDataMalformed);

        final result = introductionRemoteDataSource.getInformation();

        expect(
          () => result,
          throwsA(isA<IntroductionDeserializationException>()),
        );
      });

      test(
          'throws GetIntroductionException when Exception occurs '
          'when trying to retrieve information from firestore', () async {
        when(() => mockFirebaseFirestore.collection('introduction'))
            .thenThrow(Exception());

        final result = introductionRemoteDataSource.getInformation();

        expect(
          () => result,
          throwsA(isA<GetIntroductionException>()),
        );
      });
    });
  });
}
