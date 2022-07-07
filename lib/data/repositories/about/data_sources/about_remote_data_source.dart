import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/about/about_response.dart';
import 'package:portfolio_two/data/repositories/about/data_sources/about_exceptions.dart';

@LazySingleton()
class AboutRemoteDataSource {
  AboutRemoteDataSource(
    this._firebaseFirestore,
  );

  final FirebaseFirestore _firebaseFirestore;

  static const _aboutCollectionName = 'about';

  Future<AboutResponse> getAbout() async {
    try {
      final querySnapshot =
          await _firebaseFirestore.collection(_aboutCollectionName).get();
      final docs = querySnapshot.docs;
      return docs.aboutResponse;
    } on AboutDeserializationException {
      rethrow;
    } on Exception catch (error, stackTrace) {
      throw GetAboutException(error, stackTrace);
    }
  }
}

extension on List<QueryDocumentSnapshot> {
  AboutResponse get aboutResponse {
    final doc = isEmpty ? null : first;
    final data = doc?.data() as Map<String, dynamic>?;

    if (data != null) {
      try {
        return AboutResponse.fromJson(data);
      } catch (error, stackTrace) {
        throw AboutDeserializationException(error, stackTrace);
      }
    }

    return AboutResponse.fallback();
  }
}
