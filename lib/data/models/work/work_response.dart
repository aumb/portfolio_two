// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_response.freezed.dart';
part 'work_response.g.dart';

@freezed
class WorkResponse with _$WorkResponse {
  const factory WorkResponse({
    required String companyName,
    required String description,
    required String imageUrl,
    required String title,
    required String location,
    @JsonKey(fromJson: startDateFromTimestamp) required DateTime startDate,
    @JsonKey(fromJson: endDateFromTimestamp) DateTime? endDate,
  }) = _WorkResponse;

  @visibleForTesting
  factory WorkResponse.mock() => WorkResponse(
        companyName: 'companyName',
        description: 'description',
        imageUrl: 'imageUrl',
        title: 'title',
        location: 'location',
        startDate: DateTime(1995),
      );

  const WorkResponse._();

  factory WorkResponse.fromJson(Map<String, dynamic> json) =>
      _$WorkResponseFromJson(json);
}

DateTime? endDateFromTimestamp(Timestamp? timestamp) {
  return timestamp?.toDate();
}

DateTime startDateFromTimestamp(Timestamp timestamp) {
  return timestamp.toDate();
}
