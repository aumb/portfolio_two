import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/introduction/introduction_response.dart';
import 'package:portfolio_two/data/repositories/introduction/data_sources/introduction_remote_data_source.dart';

@LazySingleton()
class IntroductionRepository {
  IntroductionRepository(
    this._remoteDataSource,
  );

  final IntroductionRemoteDataSource _remoteDataSource;

  Future<IntroductionResponse> getInformation() =>
      _remoteDataSource.getInformation();
}
