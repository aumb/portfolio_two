import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_two/data/models/skills/skills_response.dart';

part 'skills.freezed.dart';

@freezed
class Skills with _$Skills {
  const factory Skills({
    required String title,
    required num index,
    required List<String> items,
  }) = _Skills;

  const Skills._();
}

extension SkillsResponseExtensions on SkillsResponse {
  Skills get skills => Skills(
        title: title,
        index: index,
        items: items,
      );
}

extension SkillsResponseListExtensions on List<SkillsResponse> {
  List<Skills> get skills => map((e) => e.skills).toList();
}
