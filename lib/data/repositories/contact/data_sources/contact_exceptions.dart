abstract class ContactException implements Exception {
  const ContactException(this.error, this.stackTrace);

  final Object error;
  final StackTrace stackTrace;
}

class ContactDeserializationException extends ContactException {
  const ContactDeserializationException(super.error, super.stackTrace);
}

class GetContactException extends ContactException {
  const GetContactException(super.error, super.stackTrace);
}
