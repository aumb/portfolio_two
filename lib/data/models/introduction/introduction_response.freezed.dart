// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'introduction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntroductionResponse _$IntroductionResponseFromJson(Map<String, dynamic> json) {
  return _IntroductionResponse.fromJson(json);
}

/// @nodoc
mixin _$IntroductionResponse {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntroductionResponseCopyWith<IntroductionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroductionResponseCopyWith<$Res> {
  factory $IntroductionResponseCopyWith(IntroductionResponse value,
          $Res Function(IntroductionResponse) then) =
      _$IntroductionResponseCopyWithImpl<$Res>;
  $Res call({String title, String subTitle});
}

/// @nodoc
class _$IntroductionResponseCopyWithImpl<$Res>
    implements $IntroductionResponseCopyWith<$Res> {
  _$IntroductionResponseCopyWithImpl(this._value, this._then);

  final IntroductionResponse _value;
  // ignore: unused_field
  final $Res Function(IntroductionResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subTitle = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IntroductionResponseCopyWith<$Res>
    implements $IntroductionResponseCopyWith<$Res> {
  factory _$$_IntroductionResponseCopyWith(_$_IntroductionResponse value,
          $Res Function(_$_IntroductionResponse) then) =
      __$$_IntroductionResponseCopyWithImpl<$Res>;
  @override
  $Res call({String title, String subTitle});
}

/// @nodoc
class __$$_IntroductionResponseCopyWithImpl<$Res>
    extends _$IntroductionResponseCopyWithImpl<$Res>
    implements _$$_IntroductionResponseCopyWith<$Res> {
  __$$_IntroductionResponseCopyWithImpl(_$_IntroductionResponse _value,
      $Res Function(_$_IntroductionResponse) _then)
      : super(_value, (v) => _then(v as _$_IntroductionResponse));

  @override
  _$_IntroductionResponse get _value => super._value as _$_IntroductionResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? subTitle = freezed,
  }) {
    return _then(_$_IntroductionResponse(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntroductionResponse extends _IntroductionResponse {
  const _$_IntroductionResponse({required this.title, required this.subTitle})
      : super._();

  factory _$_IntroductionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_IntroductionResponseFromJson(json);

  @override
  final String title;
  @override
  final String subTitle;

  @override
  String toString() {
    return 'IntroductionResponse(title: $title, subTitle: $subTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntroductionResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subTitle, subTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subTitle));

  @JsonKey(ignore: true)
  @override
  _$$_IntroductionResponseCopyWith<_$_IntroductionResponse> get copyWith =>
      __$$_IntroductionResponseCopyWithImpl<_$_IntroductionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntroductionResponseToJson(this);
  }
}

abstract class _IntroductionResponse extends IntroductionResponse {
  const factory _IntroductionResponse(
      {required final String title,
      required final String subTitle}) = _$_IntroductionResponse;
  const _IntroductionResponse._() : super._();

  factory _IntroductionResponse.fromJson(Map<String, dynamic> json) =
      _$_IntroductionResponse.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IntroductionResponseCopyWith<_$_IntroductionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
