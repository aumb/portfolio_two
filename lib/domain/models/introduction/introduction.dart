import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_two/data/models/introduction/introduction_response.dart';

part 'introduction.freezed.dart';

@freezed
class Introduction with _$Introduction {
  const factory Introduction({
    required String title,
    required String subTitle,
  }) = _Introduction;

  const Introduction._();
}

extension IntroductionResponseExtensions on IntroductionResponse {
  Introduction get introduction => Introduction(
        title: title,
        subTitle: subTitle,
      );
}
