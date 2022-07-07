// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get facebookUrl => throw _privateConstructorUsedError;
  String get githubUrl => throw _privateConstructorUsedError;
  String get instagramUrl => throw _privateConstructorUsedError;
  String get linkedinUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String subtitle,
      String email,
      String facebookUrl,
      String githubUrl,
      String instagramUrl,
      String linkedinUrl});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res> implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  final Contact _value;
  // ignore: unused_field
  final $Res Function(Contact) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? email = freezed,
    Object? facebookUrl = freezed,
    Object? githubUrl = freezed,
    Object? instagramUrl = freezed,
    Object? linkedinUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      facebookUrl: facebookUrl == freezed
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String,
      githubUrl: githubUrl == freezed
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String,
      instagramUrl: instagramUrl == freezed
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String,
      linkedinUrl: linkedinUrl == freezed
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$_ContactCopyWith(
          _$_Contact value, $Res Function(_$_Contact) then) =
      __$$_ContactCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String subtitle,
      String email,
      String facebookUrl,
      String githubUrl,
      String instagramUrl,
      String linkedinUrl});
}

/// @nodoc
class __$$_ContactCopyWithImpl<$Res> extends _$ContactCopyWithImpl<$Res>
    implements _$$_ContactCopyWith<$Res> {
  __$$_ContactCopyWithImpl(_$_Contact _value, $Res Function(_$_Contact) _then)
      : super(_value, (v) => _then(v as _$_Contact));

  @override
  _$_Contact get _value => super._value as _$_Contact;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? email = freezed,
    Object? facebookUrl = freezed,
    Object? githubUrl = freezed,
    Object? instagramUrl = freezed,
    Object? linkedinUrl = freezed,
  }) {
    return _then(_$_Contact(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      facebookUrl: facebookUrl == freezed
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String,
      githubUrl: githubUrl == freezed
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String,
      instagramUrl: instagramUrl == freezed
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String,
      linkedinUrl: linkedinUrl == freezed
          ? _value.linkedinUrl
          : linkedinUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contact extends _Contact {
  const _$_Contact(
      {required this.title,
      required this.subtitle,
      required this.email,
      required this.facebookUrl,
      required this.githubUrl,
      required this.instagramUrl,
      required this.linkedinUrl})
      : super._();

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String email;
  @override
  final String facebookUrl;
  @override
  final String githubUrl;
  @override
  final String instagramUrl;
  @override
  final String linkedinUrl;

  @override
  String toString() {
    return 'Contact(title: $title, subtitle: $subtitle, email: $email, facebookUrl: $facebookUrl, githubUrl: $githubUrl, instagramUrl: $instagramUrl, linkedinUrl: $linkedinUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.facebookUrl, facebookUrl) &&
            const DeepCollectionEquality().equals(other.githubUrl, githubUrl) &&
            const DeepCollectionEquality()
                .equals(other.instagramUrl, instagramUrl) &&
            const DeepCollectionEquality()
                .equals(other.linkedinUrl, linkedinUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(facebookUrl),
      const DeepCollectionEquality().hash(githubUrl),
      const DeepCollectionEquality().hash(instagramUrl),
      const DeepCollectionEquality().hash(linkedinUrl));

  @JsonKey(ignore: true)
  @override
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      __$$_ContactCopyWithImpl<_$_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactToJson(this);
  }
}

abstract class _Contact extends Contact {
  const factory _Contact(
      {required final String title,
      required final String subtitle,
      required final String email,
      required final String facebookUrl,
      required final String githubUrl,
      required final String instagramUrl,
      required final String linkedinUrl}) = _$_Contact;
  const _Contact._() : super._();

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subtitle => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get facebookUrl => throw _privateConstructorUsedError;
  @override
  String get githubUrl => throw _privateConstructorUsedError;
  @override
  String get instagramUrl => throw _privateConstructorUsedError;
  @override
  String get linkedinUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}
