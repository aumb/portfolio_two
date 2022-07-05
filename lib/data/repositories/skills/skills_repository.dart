import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/skills/skills_response.dart';
import 'package:portfolio_two/data/repositories/skills/data_sources/skills_remote_data_source.dart';

@LazySingleton()
class SkillsRepository {
  SkillsRepository(
    this._remoteDataSource,
  );

  final SkillsRemoteDataSource _remoteDataSource;

  Future<List<SkillsResponse>> getSkills() => _remoteDataSource.getSkills();
}
