import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_response.freezed.dart';
part 'project_response.g.dart';

@freezed
class ProjectResponse with _$ProjectResponse {
  const factory ProjectResponse({
    required String description,
    required String imageUrl,
    required String url,
    required num index,
    required ProjectStatus status,
  }) = _ProjectResponse;

  @visibleForTesting
  factory ProjectResponse.mock() => const ProjectResponse(
        description: 'description',
        imageUrl: 'imageUrl',
        url: 'url',
        index: 1,
        status: ProjectStatus.completed,
      );

  const ProjectResponse._();

  factory ProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectResponseFromJson(json);
}

enum ProjectStatus {
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('DEVELOPMENT')
  inDevelopment
}
