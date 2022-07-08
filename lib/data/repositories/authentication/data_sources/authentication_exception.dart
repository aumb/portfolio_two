abstract class AuthenticationException implements Exception {
  const AuthenticationException(this.error, this.stackTrace);

  final Object error;
  final StackTrace stackTrace;
}

class SignInAnonymouslyException extends AuthenticationException {
  const SignInAnonymouslyException(super.error, super.stackTrace);
}
