import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/work/work_response.dart';
import 'package:portfolio_two/data/repositories/work/data_sources/work_exceptions.dart';
import 'package:portfolio_two/data/repositories/work/data_sources/work_remote_data_source.dart';
import 'package:portfolio_two/data/repositories/work/work_repository.dart';

class MockWorkRemoteDataSource extends Mock implements WorkRemoteDataSource {}

void main() {
  late MockWorkRemoteDataSource mockWorkRemoteDataSource;
  late WorkRepository workRepository;

  setUp(() {
    mockWorkRemoteDataSource = MockWorkRemoteDataSource();
    workRepository = WorkRepository(mockWorkRemoteDataSource);
  });

  group('getWork', () {
    test('should return [WorkResponse] when successful', () async {
      when(
        () => mockWorkRemoteDataSource.getWork(),
      ).thenAnswer(
        (_) async => [WorkResponse.mock()],
      );

      final result = await workRepository.getWork();

      expect(result, equals([WorkResponse.mock()]));
    });

    test('should rethrow the remote data source error when it occurs',
        () async {
      when(
        () => mockWorkRemoteDataSource.getWork(),
      ).thenThrow(const GetWorkException('', StackTrace.empty));

      expect(
        () => workRepository.getWork(),
        throwsA(isA<WorkException>()),
      );
    });
  });
}
