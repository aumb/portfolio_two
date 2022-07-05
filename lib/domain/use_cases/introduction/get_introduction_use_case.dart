import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/repositories/introduction/introduction_repository.dart';
import 'package:portfolio_two/domain/models/introduction/introduction.dart';

@Injectable()
class GetIntroductionUseCase {
  GetIntroductionUseCase(this._repository);

  final IntroductionRepository _repository;

  Future<Introduction> run() async {
    final result = await _repository.getInformation();

    return result.introduction;
  }
}
