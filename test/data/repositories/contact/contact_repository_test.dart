import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/contact/contact_response.dart';
import 'package:portfolio_two/data/repositories/contact/contact_repository.dart';
import 'package:portfolio_two/data/repositories/contact/data_sources/contact_exceptions.dart';
import 'package:portfolio_two/data/repositories/contact/data_sources/contact_remote_data_source.dart';

class MockContactRemoteDataSource extends Mock
    implements ContactRemoteDataSource {}

void main() {
  late MockContactRemoteDataSource mockContactRemoteDataSource;
  late ContactRepository contactRepository;

  setUp(() {
    mockContactRemoteDataSource = MockContactRemoteDataSource();
    contactRepository = ContactRepository(mockContactRemoteDataSource);
  });

  group('getContact', () {
    test('should return [ContactResponse] when successful', () async {
      when(
        () => mockContactRemoteDataSource.getContactInformation(),
      ).thenAnswer((_) async => ContactResponse.mock());

      final result = await contactRepository.getContactInformation();

      expect(result, equals(ContactResponse.mock()));
    });

    test('should rethrow the remote data source error when it occurs',
        () async {
      when(
        () => mockContactRemoteDataSource.getContactInformation(),
      ).thenThrow(const GetContactException('', StackTrace.empty));

      expect(
        () => contactRepository.getContactInformation(),
        throwsA(isA<ContactException>()),
      );
    });
  });
}
