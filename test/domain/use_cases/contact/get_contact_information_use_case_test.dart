import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/contact/contact_response.dart';
import 'package:portfolio_two/data/repositories/about/data_sources/about_exceptions.dart';
import 'package:portfolio_two/data/repositories/contact/contact_repository.dart';
import 'package:portfolio_two/domain/models/contact/contact.dart';
import 'package:portfolio_two/domain/use_cases/contact/get_contact_information_use_case.dart';

class MockContactRepository extends Mock implements ContactRepository {}

void main() {
  late MockContactRepository mockContactRepository;
  late GetContactInformationUseCase getContactInformationUseCase;

  setUp(() {
    mockContactRepository = MockContactRepository();
    getContactInformationUseCase = GetContactInformationUseCase(
      mockContactRepository,
    );
  });

  group('GetContactInformationUseCase', () {
    test(
      'should return an [Contact] model when successful',
      () async {
        when(
          () => mockContactRepository.getContactInformation(),
        ).thenAnswer(
          (_) async => ContactResponse.mock(),
        );

        final expectedResult = ContactResponse.mock().contactInformation;
        final result = await getContactInformationUseCase.run();

        expect(result, equals(expectedResult));
      },
    );

    test('should rethrow the repository error when it occurs', () async {
      when(
        () => mockContactRepository.getContactInformation(),
      ).thenThrow(
        const GetAboutException('', StackTrace.empty),
      );

      expect(
        () => getContactInformationUseCase.run(),
        throwsA(isA<AboutException>()),
      );
    });
  });
}
