import 'package:injectable/injectable.dart';

import 'package:portfolio_two/data/repositories/skills/skills_repository.dart';
import 'package:portfolio_two/domain/models/skills/skills.dart';

@Injectable()
class GetSkillsUseCase {
  GetSkillsUseCase(this._repository);

  final SkillsRepository _repository;

  Future<List<Skills>> run() async {
    final result = await _repository.getSkills();

    return result.skills;
  }
}
