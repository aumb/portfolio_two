import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/repositories/about/about_repository.dart';
import 'package:portfolio_two/domain/models/about/about.dart';

@Injectable()
class GetAboutUseCase {
  GetAboutUseCase(this._repository);

  final AboutRepository _repository;

  Future<About> run() async {
    final result = await _repository.getAbout();

    return result.about;
  }
}
