abstract class WorkException implements Exception {
  const WorkException(this.error, this.stackTrace);

  final Object error;
  final StackTrace stackTrace;
}

class WorkDeserializationException extends WorkException {
  const WorkDeserializationException(super.error, super.stackTrace);
}

class GetWorkException extends WorkException {
  const GetWorkException(super.error, super.stackTrace);
}
