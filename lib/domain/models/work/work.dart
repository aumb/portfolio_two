import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_two/data/models/work/work_response.dart';

part 'work.freezed.dart';
part 'work.g.dart';

@freezed
class Work with _$Work {
  const factory Work({
    required String companyName,
    required String description,
    required String imageUrl,
    required String title,
    required String location,
    required DateTime startDate,
    DateTime? endDate,
  }) = _Work;

  @visibleForTesting
  factory Work.mock() => Work(
        companyName: 'companyName',
        description: 'description',
        imageUrl: 'http://www.google.com',
        title: 'title',
        location: 'location',
        startDate: DateTime(1995),
      );

  const Work._();

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}

extension WorkResponseExtensions on WorkResponse {
  Work get work => Work(
        companyName: companyName,
        description: description,
        imageUrl: imageUrl,
        title: title,
        location: location,
        startDate: startDate,
        endDate: endDate,
      );
}

extension WorkResponseListExtensions on List<WorkResponse> {
  List<Work> get works => map((e) => e.work).toList();
}
