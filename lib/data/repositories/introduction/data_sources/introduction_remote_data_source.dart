import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/introduction/introduction_response.dart';
import 'package:portfolio_two/data/repositories/introduction/data_sources/introduction_exceptions.dart';

@LazySingleton()
class IntroductionRemoteDataSource {
  IntroductionRemoteDataSource(
    this._firebaseFirestore,
  );

  final FirebaseFirestore _firebaseFirestore;

  static const _introductionCollectionName = 'introduction';

  Future<IntroductionResponse> getInformation() async {
    try {
      final querySnapshot = await _firebaseFirestore
          .collection(_introductionCollectionName)
          .get();
      final docs = querySnapshot.docs;
      return docs.introductionResponse;
    } on IntroductionDeserializationException {
      rethrow;
    } on Exception catch (error, stackTrace) {
      throw GetIntroductionException(error, stackTrace);
    }
  }
}

extension on List<QueryDocumentSnapshot> {
  IntroductionResponse get introductionResponse {
    final doc = isEmpty ? null : first;
    final data = doc?.data() as Map<String, dynamic>?;

    if (data != null) {
      try {
        return IntroductionResponse.fromJson(data);
      } catch (error, stackTrace) {
        throw IntroductionDeserializationException(error, stackTrace);
      }
    }

    return IntroductionResponse.fallback();
  }
}
