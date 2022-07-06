import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portfolio_two/data/models/work/work_response.dart';
import 'package:portfolio_two/data/repositories/work/data_sources/work_exceptions.dart';
import 'package:portfolio_two/data/repositories/work/work_repository.dart';
import 'package:portfolio_two/domain/models/work/work.dart';
import 'package:portfolio_two/domain/use_cases/work/get_work_use_case.dart';

class MockWorkRepository extends Mock implements WorkRepository {}

void main() {
  late MockWorkRepository mockWorkRepository;
  late GetWorkUseCase getWorkUseCase;

  setUp(() {
    mockWorkRepository = MockWorkRepository();
    getWorkUseCase = GetWorkUseCase(
      mockWorkRepository,
    );
  });

  group('GetWorkUseCase', () {
    test(
      'should return an [List<Work>] model when successful',
      () async {
        when(
          () => mockWorkRepository.getWork(),
        ).thenAnswer(
          (_) async => [WorkResponse.mock()],
        );

        final expectedResult = [WorkResponse.mock().work];
        final result = await getWorkUseCase.run();

        expect(result, equals(expectedResult));
      },
    );

    test('should rethrow the repository error when it occurs', () async {
      when(
        () => mockWorkRepository.getWork(),
      ).thenThrow(
        const GetWorkException('', StackTrace.empty),
      );

      expect(
        () => getWorkUseCase.run(),
        throwsA(isA<WorkException>()),
      );
    });
  });
}
