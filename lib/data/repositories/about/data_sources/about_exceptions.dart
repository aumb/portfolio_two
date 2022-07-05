abstract class AboutException implements Exception {
  const AboutException(this.error, this.stackTrace);

  final Object error;
  final StackTrace stackTrace;
}

class AboutDeserializationException extends AboutException {
  const AboutDeserializationException(super.error, super.stackTrace);
}

class GetAboutException extends AboutException {
  const GetAboutException(super.error, super.stackTrace);
}
