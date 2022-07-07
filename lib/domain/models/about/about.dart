import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_two/data/models/about/about_response.dart';

part 'about.freezed.dart';

@freezed
class About with _$About {
  const factory About({
    required String title,
    required String description,
  }) = _About;

  const About._();
}

extension AboutResponseExtensions on AboutResponse {
  About get about => About(
        title: title,
        description: description,
      );
}
