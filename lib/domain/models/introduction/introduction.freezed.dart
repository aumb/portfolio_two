// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'introduction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Introduction {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntroductionCopyWith<Introduction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroductionCopyWith<$Res> {
  factory $IntroductionCopyWith(
          Introduction value, $Res Function(Introduction) then) =
      _$IntroductionCopyWithImpl<$Res>;
  $Res call({String title, String subTitle});
}

/// @nodoc
class _$IntroductionCopyWithImpl<$Res> implements $IntroductionCopyWith<$Res> {
  _$IntroductionCopyWithImpl(this._value, this._then);

  final Introduction _value;
  // ignore: unused_field
  final $Res Function(Introduction) _then;

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
abstract class _$$_IntroductionCopyWith<$Res>
    implements $IntroductionCopyWith<$Res> {
  factory _$$_IntroductionCopyWith(
          _$_Introduction value, $Res Function(_$_Introduction) then) =
      __$$_IntroductionCopyWithImpl<$Res>;
  @override
  $Res call({String title, String subTitle});
}

/// @nodoc
class __$$_IntroductionCopyWithImpl<$Res>
    extends _$IntroductionCopyWithImpl<$Res>
    implements _$$_IntroductionCopyWith<$Res> {
  __$$_IntroductionCopyWithImpl(
      _$_Introduction _value, $Res Function(_$_Introduction) _then)
      : super(_value, (v) => _then(v as _$_Introduction));

  @override
  _$_Introduction get _value => super._value as _$_Introduction;

  @override
  $Res call({
    Object? title = freezed,
    Object? subTitle = freezed,
  }) {
    return _then(_$_Introduction(
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

class _$_Introduction extends _Introduction {
  const _$_Introduction({required this.title, required this.subTitle})
      : super._();

  @override
  final String title;
  @override
  final String subTitle;

  @override
  String toString() {
    return 'Introduction(title: $title, subTitle: $subTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Introduction &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subTitle, subTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subTitle));

  @JsonKey(ignore: true)
  @override
  _$$_IntroductionCopyWith<_$_Introduction> get copyWith =>
      __$$_IntroductionCopyWithImpl<_$_Introduction>(this, _$identity);
}

abstract class _Introduction extends Introduction {
  const factory _Introduction(
      {required final String title,
      required final String subTitle}) = _$_Introduction;
  const _Introduction._() : super._();

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IntroductionCopyWith<_$_Introduction> get copyWith =>
      throw _privateConstructorUsedError;
}
