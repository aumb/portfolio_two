// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectResponse _$ProjectResponseFromJson(Map<String, dynamic> json) {
  return _ProjectResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectResponse {
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  num get index => throw _privateConstructorUsedError;
  ProjectStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectResponseCopyWith<ProjectResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectResponseCopyWith<$Res> {
  factory $ProjectResponseCopyWith(
          ProjectResponse value, $Res Function(ProjectResponse) then) =
      _$ProjectResponseCopyWithImpl<$Res>;
  $Res call(
      {String description,
      String imageUrl,
      String url,
      num index,
      ProjectStatus status});
}

/// @nodoc
class _$ProjectResponseCopyWithImpl<$Res>
    implements $ProjectResponseCopyWith<$Res> {
  _$ProjectResponseCopyWithImpl(this._value, this._then);

  final ProjectResponse _value;
  // ignore: unused_field
  final $Res Function(ProjectResponse) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? index = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as num,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_ProjectResponseCopyWith<$Res>
    implements $ProjectResponseCopyWith<$Res> {
  factory _$$_ProjectResponseCopyWith(
          _$_ProjectResponse value, $Res Function(_$_ProjectResponse) then) =
      __$$_ProjectResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String description,
      String imageUrl,
      String url,
      num index,
      ProjectStatus status});
}

/// @nodoc
class __$$_ProjectResponseCopyWithImpl<$Res>
    extends _$ProjectResponseCopyWithImpl<$Res>
    implements _$$_ProjectResponseCopyWith<$Res> {
  __$$_ProjectResponseCopyWithImpl(
      _$_ProjectResponse _value, $Res Function(_$_ProjectResponse) _then)
      : super(_value, (v) => _then(v as _$_ProjectResponse));

  @override
  _$_ProjectResponse get _value => super._value as _$_ProjectResponse;

  @override
  $Res call({
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? index = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ProjectResponse(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as num,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectResponse extends _ProjectResponse {
  const _$_ProjectResponse(
      {required this.description,
      required this.imageUrl,
      required this.url,
      required this.index,
      required this.status})
      : super._();

  factory _$_ProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectResponseFromJson(json);

  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String url;
  @override
  final num index;
  @override
  final ProjectStatus status;

  @override
  String toString() {
    return 'ProjectResponse(description: $description, imageUrl: $imageUrl, url: $url, index: $index, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectResponse &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectResponseCopyWith<_$_ProjectResponse> get copyWith =>
      __$$_ProjectResponseCopyWithImpl<_$_ProjectResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectResponseToJson(this);
  }
}

abstract class _ProjectResponse extends ProjectResponse {
  const factory _ProjectResponse(
      {required final String description,
      required final String imageUrl,
      required final String url,
      required final num index,
      required final ProjectStatus status}) = _$_ProjectResponse;
  const _ProjectResponse._() : super._();

  factory _ProjectResponse.fromJson(Map<String, dynamic> json) =
      _$_ProjectResponse.fromJson;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  num get index => throw _privateConstructorUsedError;
  @override
  ProjectStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectResponseCopyWith<_$_ProjectResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
