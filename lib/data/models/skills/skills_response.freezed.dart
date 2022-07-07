// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'skills_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SkillsResponse _$SkillsResponseFromJson(Map<String, dynamic> json) {
  return _SkillsResponse.fromJson(json);
}

/// @nodoc
mixin _$SkillsResponse {
  String get title => throw _privateConstructorUsedError;
  num get index => throw _privateConstructorUsedError;
  List<String> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillsResponseCopyWith<SkillsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsResponseCopyWith<$Res> {
  factory $SkillsResponseCopyWith(
          SkillsResponse value, $Res Function(SkillsResponse) then) =
      _$SkillsResponseCopyWithImpl<$Res>;
  $Res call({String title, num index, List<String> items});
}

/// @nodoc
class _$SkillsResponseCopyWithImpl<$Res>
    implements $SkillsResponseCopyWith<$Res> {
  _$SkillsResponseCopyWithImpl(this._value, this._then);

  final SkillsResponse _value;
  // ignore: unused_field
  final $Res Function(SkillsResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? items = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_SkillsResponseCopyWith<$Res>
    implements $SkillsResponseCopyWith<$Res> {
  factory _$$_SkillsResponseCopyWith(
          _$_SkillsResponse value, $Res Function(_$_SkillsResponse) then) =
      __$$_SkillsResponseCopyWithImpl<$Res>;
  @override
  $Res call({String title, num index, List<String> items});
}

/// @nodoc
class __$$_SkillsResponseCopyWithImpl<$Res>
    extends _$SkillsResponseCopyWithImpl<$Res>
    implements _$$_SkillsResponseCopyWith<$Res> {
  __$$_SkillsResponseCopyWithImpl(
      _$_SkillsResponse _value, $Res Function(_$_SkillsResponse) _then)
      : super(_value, (v) => _then(v as _$_SkillsResponse));

  @override
  _$_SkillsResponse get _value => super._value as _$_SkillsResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_SkillsResponse(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SkillsResponse extends _SkillsResponse {
  const _$_SkillsResponse(
      {required this.title,
      required this.index,
      required final List<String> items})
      : _items = items,
        super._();

  factory _$_SkillsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SkillsResponseFromJson(json);

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
  String toString() {
    return 'SkillsResponse(title: $title, index: $index, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SkillsResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_SkillsResponseCopyWith<_$_SkillsResponse> get copyWith =>
      __$$_SkillsResponseCopyWithImpl<_$_SkillsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkillsResponseToJson(this);
  }
}

abstract class _SkillsResponse extends SkillsResponse {
  const factory _SkillsResponse(
      {required final String title,
      required final num index,
      required final List<String> items}) = _$_SkillsResponse;
  const _SkillsResponse._() : super._();

  factory _SkillsResponse.fromJson(Map<String, dynamic> json) =
      _$_SkillsResponse.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  num get index => throw _privateConstructorUsedError;
  @override
  List<String> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SkillsResponseCopyWith<_$_SkillsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
