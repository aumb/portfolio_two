import 'package:freezed_annotation/freezed_annotation.dart';

part 'skills_response.freezed.dart';
part 'skills_response.g.dart';

@freezed
class SkillsResponse with _$SkillsResponse {
  const factory SkillsResponse({
    required String title,
    required num index,
    required List<String> items,
    required String iconUrl,
  }) = _SkillsResponse;

  @visibleForTesting
  factory SkillsResponse.mock() => const SkillsResponse(
        title: 'title',
        index: 1,
        items: [
          'item1',
          'item2',
          'item3',
        ],
        iconUrl: 'iconUrl',
      );

  const SkillsResponse._();

  factory SkillsResponse.fromJson(Map<String, dynamic> json) =>
      _$SkillsResponseFromJson(json);
}
