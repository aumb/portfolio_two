import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/projects/project_response.dart';
import 'package:portfolio_two/data/repositories/projects/data_sources/projects_exceptions.dart';

@LazySingleton()
class ProjectsRemoteDataSource {
  ProjectsRemoteDataSource(
    this._firebaseFirestore,
  );

  final FirebaseFirestore _firebaseFirestore;

  static const _projectsCollectionName = 'projects';
  static const _projectsSortField = 'index';

  Future<List<ProjectResponse>> getProjects() async {
    try {
      final querySnapshot = await _firebaseFirestore
          .collection(_projectsCollectionName)
          .orderBy(_projectsSortField)
          .get();

      final docs = querySnapshot.docs;
      return docs.projectsResponse;
    } on ProjectDeserializationException {
      rethrow;
    } on Exception catch (error, stackTrace) {
      throw GetProjectsException(error, stackTrace);
    }
  }
}

extension on List<QueryDocumentSnapshot> {
  List<ProjectResponse> get projectsResponse {
    final projects = <ProjectResponse>[];

    for (final document in this) {
      final data = document.data() as Map<String, dynamic>?;

      if (data != null) {
        try {
          final parsed = ProjectResponse.fromJson(data);
          projects.add(parsed);
        } catch (error, stackTrace) {
          throw ProjectDeserializationException(error, stackTrace);
        }
      }
    }

    return projects;
  }
}
