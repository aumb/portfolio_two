// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'skills.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Skills {
  String get title => throw _privateConstructorUsedError;
  num get index => throw _privateConstructorUsedError;
  List<String> get items => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SkillsCopyWith<Skills> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsCopyWith<$Res> {
  factory $SkillsCopyWith(Skills value, $Res Function(Skills) then) =
      _$SkillsCopyWithImpl<$Res>;
  $Res call({String title, num index, List<String> items, String iconUrl});
}

/// @nodoc
class _$SkillsCopyWithImpl<$Res> implements $SkillsCopyWith<$Res> {
  _$SkillsCopyWithImpl(this._value, this._then);

  final Skills _value;
  // ignore: unused_field
  final $Res Function(Skills) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? items = freezed,
    Object? iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as num,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SkillsCopyWith<$Res> implements $SkillsCopyWith<$Res> {
  factory _$$_SkillsCopyWith(_$_Skills value, $Res Function(_$_Skills) then) =
      __$$_SkillsCopyWithImpl<$Res>;
  @override
  $Res call({String title, num index, List<String> items, String iconUrl});
}

/// @nodoc
class __$$_SkillsCopyWithImpl<$Res> extends _$SkillsCopyWithImpl<$Res>
    implements _$$_SkillsCopyWith<$Res> {
  __$$_SkillsCopyWithImpl(_$_Skills _value, $Res Function(_$_Skills) _then)
      : super(_value, (v) => _then(v as _$_Skills));

  @override
  _$_Skills get _value => super._value as _$_Skills;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? items = freezed,
    Object? iconUrl = freezed,
  }) {
    return _then(_$_Skills(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as num,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Skills extends _Skills {
  const _$_Skills(
      {required this.title,
      required this.index,
      required final List<String> items,
      required this.iconUrl})
      : _items = items,
        super._();

  @override
  final String title;
  @override
  final num index;
  final List<String> _items;
  @override
  List<String> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String iconUrl;

  @override
  String toString() {
    return 'Skills(title: $title, index: $index, items: $items, iconUrl: $iconUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Skills &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.iconUrl, iconUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(iconUrl));

  @JsonKey(ignore: true)
  @override
  _$$_SkillsCopyWith<_$_Skills> get copyWith =>
      __$$_SkillsCopyWithImpl<_$_Skills>(this, _$identity);
}

abstract class _Skills extends Skills {
  const factory _Skills(
      {required final String title,
      required final num index,
      required final List<String> items,
      required final String iconUrl}) = _$_Skills;
  const _Skills._() : super._();

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  num get index => throw _privateConstructorUsedError;
  @override
  List<String> get items => throw _privateConstructorUsedError;
  @override
  String get iconUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SkillsCopyWith<_$_Skills> get copyWith =>
      throw _privateConstructorUsedError;
}
