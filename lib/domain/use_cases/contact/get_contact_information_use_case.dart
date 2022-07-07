import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/repositories/contact/contact_repository.dart';
import 'package:portfolio_two/domain/models/contact/contact.dart';

@Injectable()
class GetContactInformationUseCase {
  GetContactInformationUseCase(this._repository);

  final ContactRepository _repository;

  Future<Contact> run() async {
    final result = await _repository.getContactInformation();

    return result.contactInformation;
  }
}
