import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_two/data/models/about/about_response.dart';

part 'about.freezed.dart';

@freezed
class About with _$About {
  const factory About({
    required String title,
    required String description,
  }) = _About;

  @visibleForTesting
  factory About.mock() => const About(
        title: 'title',
        description: 'description',
      );

  factory About.fallback() => const About(
        title: 'Software Engineer',
        description:
            'Since beginning my journey as a software developer around {VALUE} '
            'years ago, I have done remote work for companies, consulted for '
            'startups, and collaborated with talented people to create digital '
            'products for both business and consumer use. I am very out-going, '
            'curious by nature, and a problem solver.',
      );

  const About._();
}

extension AboutResponseExtensions on AboutResponse {
  About get about => About(
        title: title,
        description: description,
      );
}
