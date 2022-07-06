import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_two/data/models/projects/project_response.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String description,
    required String imageUrl,
    required String url,
    required ProjectStatus status,
  }) = _Project;

  @visibleForTesting
  factory Project.mock() => const Project(
        description: 'description',
        imageUrl: 'imageUrl',
        url: 'url',
        status: ProjectStatus.completed,
      );

  const Project._();

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

extension ProjectResponseExtensions on ProjectResponse {
  Project get project => Project(
        description: description,
        imageUrl: imageUrl,
        url: url,
        status: status,
      );
}

extension ProjectResponseListExtensions on List<ProjectResponse> {
  List<Project> get projects => map((e) => e.project).toList();
}

extension ProjectStatusExtensions on ProjectStatus {
  bool get isCompleted => this == ProjectStatus.completed;
  bool get isInDevelopment => this == ProjectStatus.inDevelopment;
}
