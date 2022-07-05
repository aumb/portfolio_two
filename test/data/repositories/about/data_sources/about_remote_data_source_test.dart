import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/about/about_response.dart';
import 'package:portfolio_two/data/repositories/about/data_sources/about_exceptions.dart';
import 'package:portfolio_two/data/repositories/about/data_sources/about_remote_data_source.dart';

import '../../../../helpers/firestore_mocks.dart';

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockQuerySnapshot mockQuerySnapshot;
  late AboutRemoteDataSource aboutRemoteDataSource;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockQuerySnapshot = MockQuerySnapshot();

    aboutRemoteDataSource = AboutRemoteDataSource(mockFirebaseFirestore);

    when(() => mockFirebaseFirestore.collection('about')).thenAnswer(
      (_) => mockCollectionReference,
    );
    when(() => mockCollectionReference.get())
        .thenAnswer((_) async => mockQuerySnapshot);
  });

  group('AboutRemoteDataSource', () {
    group('geAbout', () {
      final aboutResponseList = [AboutResponse.mock()];
      final queryDocumentSnapshots = aboutResponseList.map((aboutResponse) {
        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();
        when(mockQueryDocumentSnapshot.data).thenReturn(
          aboutResponse.toJson(),
        );
        return mockQueryDocumentSnapshot;
      }).toList();

      test('should return [AboutResponse] when successful', () async {
        when(() => mockQuerySnapshot.docs).thenReturn(queryDocumentSnapshots);

        final result = await aboutRemoteDataSource.getAbout();

        expect(
          result,
          equals(AboutResponse.mock()),
        );
      });

      test(
          'should throw AboutDeserializationException when Exception '
          'occurs during deserialization', () async {
        final aboutDataMalformed = <String, dynamic>{
          'title': 'title',
          'descriptionn': 'subtitle',
        };

        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();

        when(() => mockQuerySnapshot.docs)
            .thenReturn([mockQueryDocumentSnapshot]);
        when(mockQueryDocumentSnapshot.data).thenReturn(aboutDataMalformed);

        final result = aboutRemoteDataSource.getAbout();

        expect(
          () => result,
          throwsA(isA<AboutDeserializationException>()),
        );
      });

      test(
          'throws GetAboutException when Exception occurs '
          'when trying to retrieve information from firestore', () async {
        when(() => mockFirebaseFirestore.collection('about'))
            .thenThrow(Exception());

        final result = aboutRemoteDataSource.getAbout();

        expect(
          () => result,
          throwsA(isA<GetAboutException>()),
        );
      });
    });
  });
}
