abstract class SkillsException implements Exception {
  const SkillsException(this.error, this.stackTrace);

  final Object error;
  final StackTrace stackTrace;
}

class SkillsDeserializationException extends SkillsException {
  const SkillsDeserializationException(super.error, super.stackTrace);
}

class GetSkillsException extends SkillsException {
  const GetSkillsException(super.error, super.stackTrace);
}
