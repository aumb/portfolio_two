import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/skills/skills_response.dart';
import 'package:portfolio_two/data/repositories/skills/data_sources/skills_exceptions.dart';

@LazySingleton()
class SkillsRemoteDataSource {
  SkillsRemoteDataSource(
    this._firebaseFirestore,
  );

  final FirebaseFirestore _firebaseFirestore;

  static const _skillsCollectionName = 'skills';
  static const _skillsSortField = 'index';

  Future<List<SkillsResponse>> getSkills() async {
    try {
      final querySnapshot = await _firebaseFirestore
          .collection(_skillsCollectionName)
          .orderBy(_skillsSortField)
          .get();

      final docs = querySnapshot.docs;
      return docs.skillsResponse;
    } on SkillsDeserializationException {
      rethrow;
    } on Exception catch (error, stackTrace) {
      throw GetSkillsException(error, stackTrace);
    }
  }
}

extension on List<QueryDocumentSnapshot> {
  List<SkillsResponse> get skillsResponse {
    final skills = <SkillsResponse>[];

    for (final document in this) {
      final data = document.data() as Map<String, dynamic>?;

      if (data != null) {
        try {
          final parsed = SkillsResponse.fromJson(data);
          skills.add(parsed);
        } catch (error, stackTrace) {
          throw SkillsDeserializationException(error, stackTrace);
        }
      }
    }

    return skills;
  }
}
