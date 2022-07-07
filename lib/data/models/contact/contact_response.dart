import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_response.freezed.dart';
part 'contact_response.g.dart';

@freezed
class ContactResponse with _$ContactResponse {
  const factory ContactResponse({
    required String title,
    required String subtitle,
    required String email,
    required String facebookUrl,
    required String githubUrl,
    required String instagramUrl,
    required String linkedinUrl,
  }) = _ContactResponse;

  @visibleForTesting
  factory ContactResponse.mock() => const ContactResponse(
        title: 'title',
        subtitle: 'subtitle',
        email: 'email',
        facebookUrl: 'facebookUrl',
        githubUrl: 'githubUrl',
        instagramUrl: 'instagramUrl',
        linkedinUrl: 'linkedinUrl',
      );

  factory ContactResponse.fallback() => const ContactResponse(
        title: 'Living and learning one day at a time.',
        subtitle: 'Get in touch',
        email: 'mathiew95@gmail.com',
        facebookUrl: 'https://www.facebook.com/mathiew.abbas',
        githubUrl: 'https://github.com/aumb',
        instagramUrl: 'https://www.instagram.com/mathiewabbas',
        linkedinUrl: 'https://www.linkedin.com/in/mathiewabbas',
      );

  const ContactResponse._();

  factory ContactResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactResponseFromJson(json);
}
