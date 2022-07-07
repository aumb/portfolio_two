import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_two/data/models/skills/skills_response.dart';

part 'skills.freezed.dart';

@freezed
class Skills with _$Skills {
  const factory Skills({
    required String title,
    required num index,
    required List<String> items,
    required String iconUrl,
  }) = _Skills;

  @visibleForTesting
  factory Skills.mock() => const Skills(
        title: 'title',
        index: 1,
        items: [
          'item1',
          'item2',
          'item3',
        ],
        iconUrl: 'iconUrl',
      );

  const Skills._();
}

extension SkillsResponseExtensions on SkillsResponse {
  Skills get skills => Skills(
        title: title,
        index: index,
        items: items,
        iconUrl: iconUrl,
      );
}

extension SkillsResponseListExtensions on List<SkillsResponse> {
  List<Skills> get skills => map((e) => e.skills).toList();
}
