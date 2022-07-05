import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_response.freezed.dart';
part 'about_response.g.dart';

@freezed
class AboutResponse with _$AboutResponse {
  const factory AboutResponse({
    required String title,
    required String description,
  }) = _AboutResponse;

  @visibleForTesting
  factory AboutResponse.mock() => const AboutResponse(
        title: 'title',
        description: 'description',
      );

  factory AboutResponse.fallback() => const AboutResponse(
        title: 'Software Engineer',
        description:
            'Since beginning my journey as a software developer around {VALUE} '
            'years ago, I have done remote work for companies, consulted for '
            'startups, and collaborated with talented people to create digital '
            'products for both business and consumer use. I am very out-going, '
            'curious by nature, and a problem solver.',
      );

  const AboutResponse._();

  factory AboutResponse.fromJson(Map<String, dynamic> json) =>
      _$AboutResponseFromJson(json);
}
