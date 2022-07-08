import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/repositories/authentication/data_sources/authentication_remote_data_source.dart';

@LazySingleton()
class AuthenticationRepository {
  AuthenticationRepository(
    this._remoteDataSource,
  );

  final AuthenticationRemoteDataSource _remoteDataSource;

  Future<void> signInAnonymously() => _remoteDataSource.signInAnonymously();
}
