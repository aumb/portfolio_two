import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/work/work_response.dart';
import 'package:portfolio_two/data/repositories/work/data_sources/work_remote_data_source.dart';

@LazySingleton()
class WorkRepository {
  WorkRepository(
    this._remoteDataSource,
  );

  final WorkRemoteDataSource _remoteDataSource;

  Future<List<WorkResponse>> getWork() => _remoteDataSource.getWork();
}
