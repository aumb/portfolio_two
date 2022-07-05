import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/about/about_response.dart';
import 'package:portfolio_two/data/repositories/about/about_repository.dart';
import 'package:portfolio_two/data/repositories/about/data_sources/about_exceptions.dart';
import 'package:portfolio_two/data/repositories/about/data_sources/about_remote_data_source.dart';

class MockAboutRemoteDataSource extends Mock implements AboutRemoteDataSource {}

void main() {
  late MockAboutRemoteDataSource mockAboutRemoteDataSource;
  late AboutRepository aboutRepository;

  setUp(() {
    mockAboutRemoteDataSource = MockAboutRemoteDataSource();
    aboutRepository = AboutRepository(mockAboutRemoteDataSource);
  });

  group('getAbout', () {
    test('should return [AboutResponse] when successful', () async {
      when(
        () => mockAboutRemoteDataSource.getAbout(),
      ).thenAnswer((_) async => AboutResponse.mock());

      final result = await aboutRepository.getAbout();

      expect(result, equals(AboutResponse.mock()));
    });

    test('should rethrow the remote data source error when it occurs',
        () async {
      when(
        () => mockAboutRemoteDataSource.getAbout(),
      ).thenThrow(const GetAboutException('', StackTrace.empty));

      expect(
        () => aboutRepository.getAbout(),
        throwsA(isA<AboutException>()),
      );
    });
  });
}
