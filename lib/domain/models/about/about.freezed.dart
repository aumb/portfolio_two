// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'about.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$About {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AboutCopyWith<About> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutCopyWith<$Res> {
  factory $AboutCopyWith(About value, $Res Function(About) then) =
      _$AboutCopyWithImpl<$Res>;
  $Res call({String title, String description});
}

/// @nodoc
class _$AboutCopyWithImpl<$Res> implements $AboutCopyWith<$Res> {
  _$AboutCopyWithImpl(this._value, this._then);

  final About _value;
  // ignore: unused_field
  final $Res Function(About) _then;

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
abstract class _$$_AboutCopyWith<$Res> implements $AboutCopyWith<$Res> {
  factory _$$_AboutCopyWith(_$_About value, $Res Function(_$_About) then) =
      __$$_AboutCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description});
}

/// @nodoc
class __$$_AboutCopyWithImpl<$Res> extends _$AboutCopyWithImpl<$Res>
    implements _$$_AboutCopyWith<$Res> {
  __$$_AboutCopyWithImpl(_$_About _value, $Res Function(_$_About) _then)
      : super(_value, (v) => _then(v as _$_About));

  @override
  _$_About get _value => super._value as _$_About;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_About(
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

class _$_About extends _About {
  const _$_About({required this.title, required this.description}) : super._();

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'About(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_About &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_AboutCopyWith<_$_About> get copyWith =>
      __$$_AboutCopyWithImpl<_$_About>(this, _$identity);
}

abstract class _About extends About {
  const factory _About(
      {required final String title,
      required final String description}) = _$_About;
  const _About._() : super._();

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AboutCopyWith<_$_About> get copyWith =>
      throw _privateConstructorUsedError;
}
