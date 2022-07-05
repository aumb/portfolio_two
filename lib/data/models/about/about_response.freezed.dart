// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'about_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AboutResponse _$AboutResponseFromJson(Map<String, dynamic> json) {
  return _AboutResponse.fromJson(json);
}

/// @nodoc
mixin _$AboutResponse {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutResponseCopyWith<AboutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutResponseCopyWith<$Res> {
  factory $AboutResponseCopyWith(
          AboutResponse value, $Res Function(AboutResponse) then) =
      _$AboutResponseCopyWithImpl<$Res>;
  $Res call({String title, String description});
}

/// @nodoc
class _$AboutResponseCopyWithImpl<$Res>
    implements $AboutResponseCopyWith<$Res> {
  _$AboutResponseCopyWithImpl(this._value, this._then);

  final AboutResponse _value;
  // ignore: unused_field
  final $Res Function(AboutResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AboutResponseCopyWith<$Res>
    implements $AboutResponseCopyWith<$Res> {
  factory _$$_AboutResponseCopyWith(
          _$_AboutResponse value, $Res Function(_$_AboutResponse) then) =
      __$$_AboutResponseCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description});
}

/// @nodoc
class __$$_AboutResponseCopyWithImpl<$Res>
    extends _$AboutResponseCopyWithImpl<$Res>
    implements _$$_AboutResponseCopyWith<$Res> {
  __$$_AboutResponseCopyWithImpl(
      _$_AboutResponse _value, $Res Function(_$_AboutResponse) _then)
      : super(_value, (v) => _then(v as _$_AboutResponse));

  @override
  _$_AboutResponse get _value => super._value as _$_AboutResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_AboutResponse(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AboutResponse extends _AboutResponse {
  const _$_AboutResponse({required this.title, required this.description})
      : super._();

  factory _$_AboutResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AboutResponseFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'AboutResponse(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_AboutResponseCopyWith<_$_AboutResponse> get copyWith =>
      __$$_AboutResponseCopyWithImpl<_$_AboutResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutResponseToJson(this);
  }
}

abstract class _AboutResponse extends AboutResponse {
  const factory _AboutResponse(
      {required final String title,
      required final String description}) = _$_AboutResponse;
  const _AboutResponse._() : super._();

  factory _AboutResponse.fromJson(Map<String, dynamic> json) =
      _$_AboutResponse.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AboutResponseCopyWith<_$_AboutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
