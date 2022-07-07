import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/contact/contact_response.dart';
import 'package:portfolio_two/data/repositories/contact/data_sources/contact_exceptions.dart';

@LazySingleton()
class ContactRemoteDataSource {
  ContactRemoteDataSource(
    this._firebaseFirestore,
  );

  final FirebaseFirestore _firebaseFirestore;

  static const _contactCollectionName = 'contact';

  Future<ContactResponse> getContactInformation() async {
    try {
      final querySnapshot =
          await _firebaseFirestore.collection(_contactCollectionName).get();
      final docs = querySnapshot.docs;
      return docs.contactResponse;
    } on ContactDeserializationException {
      rethrow;
    } on Exception catch (error, stackTrace) {
      throw GetContactException(error, stackTrace);
    }
  }
}

extension on List<QueryDocumentSnapshot> {
  ContactResponse get contactResponse {
    final doc = isEmpty ? null : first;
    final data = doc?.data() as Map<String, dynamic>?;

    if (data != null) {
      try {
        return ContactResponse.fromJson(data);
      } catch (error, stackTrace) {
        throw ContactDeserializationException(error, stackTrace);
      }
    }

    return ContactResponse.fallback();
  }
}
