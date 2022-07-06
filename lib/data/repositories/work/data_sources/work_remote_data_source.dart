import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/data/models/work/work_response.dart';
import 'package:portfolio_two/data/repositories/work/data_sources/work_exceptions.dart';

@LazySingleton()
class WorkRemoteDataSource {
  WorkRemoteDataSource(
    this._firebaseFirestore,
  );

  final FirebaseFirestore _firebaseFirestore;

  static const _workCollectionName = 'work';
  static const _workSortField = 'endDate';

  Future<List<WorkResponse>> getWork() async {
    try {
      final querySnapshot = await _firebaseFirestore
          .collection(_workCollectionName)
          .orderBy(_workSortField)
          .get();

      final docs = querySnapshot.docs;
      return docs.workResponse;
    } on WorkDeserializationException {
      rethrow;
    } on Exception catch (error, stackTrace) {
      throw GetWorkException(error, stackTrace);
    }
  }
}

extension on List<QueryDocumentSnapshot> {
  List<WorkResponse> get workResponse {
    final work = <WorkResponse>[];

    for (final document in this) {
      final data = document.data() as Map<String, dynamic>?;

      if (data != null) {
        try {
          final parsed = WorkResponse.fromJson(data);
          work.add(parsed);
        } catch (error, stackTrace) {
          throw WorkDeserializationException(error, stackTrace);
        }
      }
    }

    return work;
  }
}
