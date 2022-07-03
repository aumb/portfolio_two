import 'package:equatable/equatable.dart';

class Project extends Equatable {
  const Project({
    required this.imageUrl,
    required this.description,
    required this.status,
    this.url,
  });

  final String imageUrl;
  final String description;
  final String? url;
  final ProjectStatus status;

  @override
  List<Object?> get props => [
        imageUrl,
        description,
        url,
        status,
      ];
}

enum ProjectStatus {
  completed,
  development,
}
