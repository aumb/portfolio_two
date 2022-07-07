import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/projects/project_response.dart';
import 'package:portfolio_two/data/repositories/projects/data_sources/projects_remote_data_source.dart';

@LazySingleton()
class ProjectsRepository {
  ProjectsRepository(
    this._remoteDataSource,
  );

  final ProjectsRemoteDataSource _remoteDataSource;

  Future<List<ProjectResponse>> getProjects() =>
      _remoteDataSource.getProjects();
}
