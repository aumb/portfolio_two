import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/introduction/introduction_response.dart';
import 'package:portfolio_two/data/repositories/introduction/data_sources/introduction_exceptions.dart';
import 'package:portfolio_two/data/repositories/introduction/data_sources/introduction_remote_data_source.dart';
import 'package:portfolio_two/data/repositories/introduction/introduction_repository.dart';

class MockIntroductionRemoteDataSource extends Mock
    implements IntroductionRemoteDataSource {}

void main() {
  late MockIntroductionRemoteDataSource mockIntroductionRemoteDataSource;
  late IntroductionRepository introductionRepository;

  setUp(() {
    mockIntroductionRemoteDataSource = MockIntroductionRemoteDataSource();
    introductionRepository =
        IntroductionRepository(mockIntroductionRemoteDataSource);
  });

  group('getIntroduction', () {
    test('should return [IntroductionResponse] when successful', () async {
      when(
        () => mockIntroductionRemoteDataSource.getInformation(),
      ).thenAnswer((_) async => IntroductionResponse.mock());

      final result = await introductionRepository.getInformation();

      expect(result, equals(IntroductionResponse.mock()));
    });

    test('should rethrow the remote data source error when it occurs',
        () async {
      when(
        () => mockIntroductionRemoteDataSource.getInformation(),
      ).thenThrow(const GetIntroductionException('', StackTrace.empty));

      expect(
        () => introductionRepository.getInformation(),
        throwsA(isA<IntroductionException>()),
      );
    });
  });
}
