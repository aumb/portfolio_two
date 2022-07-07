import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/contact/contact_response.dart';
import 'package:portfolio_two/data/repositories/contact/data_sources/contact_remote_data_source.dart';

@LazySingleton()
class ContactRepository {
  ContactRepository(
    this._remoteDataSource,
  );

  final ContactRemoteDataSource _remoteDataSource;

  Future<ContactResponse> getContactInformation() =>
      _remoteDataSource.getContactInformation();
}
