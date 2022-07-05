abstract class IntroductionException implements Exception {
  const IntroductionException(this.error, this.stackTrace);

  final Object error;
  final StackTrace stackTrace;
}

class IntroductionDeserializationException extends IntroductionException {
  const IntroductionDeserializationException(super.error, super.stackTrace);
}

class GetIntroductionException extends IntroductionException {
  const GetIntroductionException(super.error, super.stackTrace);
}
