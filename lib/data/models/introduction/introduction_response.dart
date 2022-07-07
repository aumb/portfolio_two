import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduction_response.freezed.dart';
part 'introduction_response.g.dart';

@freezed
class IntroductionResponse with _$IntroductionResponse {
  const factory IntroductionResponse({
    required String title,
    required String subTitle,
  }) = _IntroductionResponse;

  @visibleForTesting
  factory IntroductionResponse.mock() => const IntroductionResponse(
        title: 'title',
        subTitle: 'subtitle',
      );

  factory IntroductionResponse.fallback() => const IntroductionResponse(
        title: 'Software Engineer',
        subTitle:
            'I architect and code beautifully simple things, and I love what '
            'I do',
      );

  const IntroductionResponse._();

  factory IntroductionResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroductionResponseFromJson(json);
}
