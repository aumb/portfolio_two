// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  HomeStatus get status => throw _privateConstructorUsedError;
  Introduction get introduction => throw _privateConstructorUsedError;
  About get about => throw _privateConstructorUsedError;
  List<Skills> get skills => throw _privateConstructorUsedError;
  List<Project> get projects => throw _privateConstructorUsedError;
  List<Work> get work => throw _privateConstructorUsedError;
  Contact get contact => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {HomeStatus status,
      Introduction introduction,
      About about,
      List<Skills> skills,
      List<Project> projects,
      List<Work> work,
      Contact contact});

  $HomeStatusCopyWith<$Res> get status;
  $IntroductionCopyWith<$Res> get introduction;
  $AboutCopyWith<$Res> get about;
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? introduction = freezed,
    Object? about = freezed,
    Object? skills = freezed,
    Object? projects = freezed,
    Object? work = freezed,
    Object? contact = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      introduction: introduction == freezed
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as Introduction,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as About,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skills>,
      projects: projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      work: work == freezed
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as List<Work>,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }

  @override
  $HomeStatusCopyWith<$Res> get status {
    return $HomeStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $IntroductionCopyWith<$Res> get introduction {
    return $IntroductionCopyWith<$Res>(_value.introduction, (value) {
      return _then(_value.copyWith(introduction: value));
    });
  }

  @override
  $AboutCopyWith<$Res> get about {
    return $AboutCopyWith<$Res>(_value.about, (value) {
      return _then(_value.copyWith(about: value));
    });
  }

  @override
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {HomeStatus status,
      Introduction introduction,
      About about,
      List<Skills> skills,
      List<Project> projects,
      List<Work> work,
      Contact contact});

  @override
  $HomeStatusCopyWith<$Res> get status;
  @override
  $IntroductionCopyWith<$Res> get introduction;
  @override
  $AboutCopyWith<$Res> get about;
  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? status = freezed,
    Object? introduction = freezed,
    Object? about = freezed,
    Object? skills = freezed,
    Object? projects = freezed,
    Object? work = freezed,
    Object? contact = freezed,
  }) {
    return _then(_$_HomeState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      introduction: introduction == freezed
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as Introduction,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as About,
      skills: skills == freezed
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skills>,
      projects: projects == freezed
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      work: work == freezed
          ? _value._work
          : work // ignore: cast_nullable_to_non_nullable
              as List<Work>,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$_HomeState extends _HomeState with DiagnosticableTreeMixin {
  _$_HomeState(
      {required this.status,
      required this.introduction,
      required this.about,
      required final List<Skills> skills,
      required final List<Project> projects,
      required final List<Work> work,
      required this.contact})
      : _skills = skills,
        _projects = projects,
        _work = work,
        super._();

  @override
  final HomeStatus status;
  @override
  final Introduction introduction;
  @override
  final About about;
  final List<Skills> _skills;
  @override
  List<Skills> get skills {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<Project> _projects;
  @override
  List<Project> get projects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  final List<Work> _work;
  @override
  List<Work> get work {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_work);
  }

  @override
  final Contact contact;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(status: $status, introduction: $introduction, about: $about, skills: $skills, projects: $projects, work: $work, contact: $contact)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('introduction', introduction))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('skills', skills))
      ..add(DiagnosticsProperty('projects', projects))
      ..add(DiagnosticsProperty('work', work))
      ..add(DiagnosticsProperty('contact', contact));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.introduction, introduction) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality().equals(other._work, _work) &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(introduction),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_projects),
      const DeepCollectionEquality().hash(_work),
      const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  factory _HomeState(
      {required final HomeStatus status,
      required final Introduction introduction,
      required final About about,
      required final List<Skills> skills,
      required final List<Project> projects,
      required final List<Work> work,
      required final Contact contact}) = _$_HomeState;
  _HomeState._() : super._();

  @override
  HomeStatus get status => throw _privateConstructorUsedError;
  @override
  Introduction get introduction => throw _privateConstructorUsedError;
  @override
  About get about => throw _privateConstructorUsedError;
  @override
  List<Skills> get skills => throw _privateConstructorUsedError;
  @override
  List<Project> get projects => throw _privateConstructorUsedError;
  @override
  List<Work> get work => throw _privateConstructorUsedError;
  @override
  Contact get contact => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Failure value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStatusCopyWith<$Res> {
  factory $HomeStatusCopyWith(
          HomeStatus value, $Res Function(HomeStatus) then) =
      _$HomeStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStatusCopyWithImpl<$Res> implements $HomeStatusCopyWith<$Res> {
  _$HomeStatusCopyWithImpl(this._value, this._then);

  final HomeStatus _value;
  // ignore: unused_field
  final $Res Function(HomeStatus) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$HomeStatusCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStatus.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeStatus.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Exception error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Failure value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HomeStatus {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$HomeStatusCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStatus.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeStatus.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Failure value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HomeStatus {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res> extends _$HomeStatusCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;
}

/// @nodoc

class _$Loaded with DiagnosticableTreeMixin implements Loaded {
  const _$Loaded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStatus.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeStatus.loaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Exception error) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception error)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Failure value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements HomeStatus {
  const factory Loaded() = _$Loaded;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res> extends _$HomeStatusCopyWithImpl<$Res>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, (v) => _then(v as _$Failure));

  @override
  _$Failure get _value => super._value as _$Failure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$Failure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$Failure with DiagnosticableTreeMixin implements Failure {
  const _$Failure(this.error);

  @override
  final Exception error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStatus.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeStatus.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$FailureCopyWith<_$Failure> get copyWith =>
      __$$FailureCopyWithImpl<_$Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Failure value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Failure implements HomeStatus {
  const factory Failure(final Exception error) = _$Failure;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<_$Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
