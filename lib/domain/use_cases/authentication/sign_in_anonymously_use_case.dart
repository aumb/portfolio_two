import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/repositories/authentication/authentication_repository.dart';

@Injectable()
class SignInAnonymouslyUseCase {
  SignInAnonymouslyUseCase(this._repository);

  final AuthenticationRepository _repository;

  Future<void> run() async {
    return _repository.signInAnonymously();
  }
}
