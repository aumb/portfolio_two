import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/contact/contact_response.dart';
import 'package:portfolio_two/data/repositories/contact/data_sources/contact_exceptions.dart';
import 'package:portfolio_two/data/repositories/contact/data_sources/contact_remote_data_source.dart';

import '../../../../helpers/firestore_mocks.dart';

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockQuerySnapshot mockQuerySnapshot;
  late ContactRemoteDataSource contactRemoteDataSource;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockQuerySnapshot = MockQuerySnapshot();

    contactRemoteDataSource = ContactRemoteDataSource(mockFirebaseFirestore);

    when(() => mockFirebaseFirestore.collection('contact')).thenAnswer(
      (_) => mockCollectionReference,
    );
    when(() => mockCollectionReference.get())
        .thenAnswer((_) async => mockQuerySnapshot);
  });

  group('ContactRemoteDataSource', () {
    group('geContact', () {
      final contactResponseList = [ContactResponse.mock()];
      final queryDocumentSnapshots = contactResponseList.map((contactResponse) {
        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();
        when(mockQueryDocumentSnapshot.data).thenReturn(
          contactResponse.toJson(),
        );
        return mockQueryDocumentSnapshot;
      }).toList();

      test('should return [ContactResponse] when successful', () async {
        when(() => mockQuerySnapshot.docs).thenReturn(queryDocumentSnapshots);

        final result = await contactRemoteDataSource.getContactInformation();

        expect(
          result,
          equals(ContactResponse.mock()),
        );
      });

      test(
          'should throw ContactDeserializationException when Exception '
          'occurs during deserialization', () async {
        final contactDataMalformed = <String, dynamic>{
          'title': 'title',
        };

        final mockQueryDocumentSnapshot = MockQueryDocumentSnapshot();

        when(() => mockQuerySnapshot.docs)
            .thenReturn([mockQueryDocumentSnapshot]);
        when(mockQueryDocumentSnapshot.data).thenReturn(contactDataMalformed);

        final result = contactRemoteDataSource.getContactInformation();

        expect(
          () => result,
          throwsA(isA<ContactDeserializationException>()),
        );
      });

      test(
          'throws GetContactException when Exception occurs '
          'when trying to retrieve information from firestore', () async {
        when(() => mockFirebaseFirestore.collection('contact'))
            .thenThrow(Exception());

        final result = contactRemoteDataSource.getContactInformation();

        expect(
          () => result,
          throwsA(isA<GetContactException>()),
        );
      });
    });
  });
}
