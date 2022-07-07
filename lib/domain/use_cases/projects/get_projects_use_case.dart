import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/repositories/projects/projects_repository.dart';
import 'package:portfolio_two/domain/models/projects/project.dart';

@Injectable()
class GetProjectsUseCase {
  GetProjectsUseCase(this._repository);

  final ProjectsRepository _repository;

  Future<List<Project>> run() async {
    final result = await _repository.getProjects();

    return result.projects;
  }
}
