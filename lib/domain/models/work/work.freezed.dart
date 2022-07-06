// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Work _$WorkFromJson(Map<String, dynamic> json) {
  return _Work.fromJson(json);
}

/// @nodoc
mixin _$Work {
  String get companyName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res>;
  $Res call(
      {String companyName,
      String description,
      String imageUrl,
      String title,
      String location,
      DateTime startDate,
      DateTime? endDate});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res> implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  final Work _value;
  // ignore: unused_field
  final $Res Function(Work) _then;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$$_WorkCopyWith(_$_Work value, $Res Function(_$_Work) then) =
      __$$_WorkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String companyName,
      String description,
      String imageUrl,
      String title,
      String location,
      DateTime startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$_WorkCopyWithImpl<$Res> extends _$WorkCopyWithImpl<$Res>
    implements _$$_WorkCopyWith<$Res> {
  __$$_WorkCopyWithImpl(_$_Work _value, $Res Function(_$_Work) _then)
      : super(_value, (v) => _then(v as _$_Work));

  @override
  _$_Work get _value => super._value as _$_Work;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_Work(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Work extends _Work {
  const _$_Work(
      {required this.companyName,
      required this.description,
      required this.imageUrl,
      required this.title,
      required this.location,
      required this.startDate,
      this.endDate})
      : super._();

  factory _$_Work.fromJson(Map<String, dynamic> json) => _$$_WorkFromJson(json);

  @override
  final String companyName;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String location;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'Work(companyName: $companyName, description: $description, imageUrl: $imageUrl, title: $title, location: $location, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Work &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$$_WorkCopyWith<_$_Work> get copyWith =>
      __$$_WorkCopyWithImpl<_$_Work>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkToJson(this);
  }
}

abstract class _Work extends Work {
  const factory _Work(
      {required final String companyName,
      required final String description,
      required final String imageUrl,
      required final String title,
      required final String location,
      required final DateTime startDate,
      final DateTime? endDate}) = _$_Work;
  const _Work._() : super._();

  factory _Work.fromJson(Map<String, dynamic> json) = _$_Work.fromJson;

  @override
  String get companyName => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WorkCopyWith<_$_Work> get copyWith => throw _privateConstructorUsedError;
}
