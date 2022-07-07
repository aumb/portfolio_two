import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_two/data/models/contact/contact_response.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    required String title,
    required String subtitle,
    required String email,
    required String facebookUrl,
    required String githubUrl,
    required String instagramUrl,
    required String linkedinUrl,
  }) = _Contact;

  @visibleForTesting
  factory Contact.mock() => const Contact(
        title: 'title',
        subtitle: 'subtitle',
        email: 'email',
        facebookUrl: 'facebookUrl',
        githubUrl: 'githubUrl',
        instagramUrl: 'instagramUrl',
        linkedinUrl: 'linkedinUrl',
      );

  const Contact._();

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

extension ContactResponseExtensions on ContactResponse {
  Contact get contactInformation => Contact(
        title: title,
        subtitle: subtitle,
        email: email,
        facebookUrl: facebookUrl,
        githubUrl: githubUrl,
        instagramUrl: instagramUrl,
        linkedinUrl: linkedinUrl,
      );
}

extension ContactExtensions on Contact {
  bool get showEmail => email.isNotEmpty;
  bool get showFacebook => facebookUrl.isNotEmpty;
  bool get showGithub => githubUrl.isNotEmpty;
  bool get showInstagram => instagramUrl.isNotEmpty;
  bool get showLinkedin => linkedinUrl.isNotEmpty;
}
