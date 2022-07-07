import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/about/about_response.dart';
import 'package:portfolio_two/data/repositories/about/data_sources/about_remote_data_source.dart';

@LazySingleton()
class AboutRepository {
  AboutRepository(
    this._remoteDataSource,
  );

  final AboutRemoteDataSource _remoteDataSource;

  Future<AboutResponse> getAbout() => _remoteDataSource.getAbout();
}
