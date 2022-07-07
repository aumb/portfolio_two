import 'package:injectable/injectable.dart';

import 'package:portfolio_two/data/repositories/work/work_repository.dart';
import 'package:portfolio_two/domain/models/work/work.dart';

@Injectable()
class GetWorkUseCase {
  GetWorkUseCase(this._repository);

  final WorkRepository _repository;

  Future<List<Work>> run() async {
    final result = await _repository.getWork();

    return result.works;
  }
}
