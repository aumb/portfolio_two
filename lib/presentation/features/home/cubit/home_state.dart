part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required HomeStatus status,
    required Introduction introduction,
    required About about,
    required List<Skills> skills,
    required List<Project> projects,
    required List<Work> work,
    required Contact contact,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      status: const HomeStatus.initial(),
      introduction: Introduction.fallback(),
      about: About.fallback(),
      skills: [],
      projects: [],
      work: [],
      contact: Contact.fallback(),
    );
  }

  const HomeState._();
}

@freezed
class HomeStatus with _$HomeStatus {
  const factory HomeStatus.initial() = Initial;

  const factory HomeStatus.loading() = Loading;

  const factory HomeStatus.loaded() = Loaded;

  const factory HomeStatus.error(Exception error) = Failure;
}

extension HomeStatusExtension<T> on HomeStatus {
  bool get isInitial => this is Initial;

  bool get isLoading => this is Loading;

  bool get isSuccess => this is Loaded;

  bool get isFailure => this is Failure;
}
