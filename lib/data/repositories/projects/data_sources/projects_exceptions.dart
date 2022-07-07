abstract class ProjectsException implements Exception {
  const ProjectsException(this.error, this.stackTrace);

  final Object error;
  final StackTrace stackTrace;
}

class ProjectDeserializationException extends ProjectsException {
  const ProjectDeserializationException(super.error, super.stackTrace);
}

class GetProjectsException extends ProjectsException {
  const GetProjectsException(super.error, super.stackTrace);
}
