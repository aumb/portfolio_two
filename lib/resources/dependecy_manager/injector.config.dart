// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repositories/about/about_repository.dart' as _i5;
import '../../data/repositories/about/data_sources/about_remote_data_source.dart'
    as _i3;
import '../../data/repositories/contact/contact_repository.dart' as _i7;
import '../../data/repositories/contact/data_sources/contact_remote_data_source.dart'
    as _i6;
import '../../data/repositories/introduction/data_sources/introduction_remote_data_source.dart'
    as _i10;
import '../../data/repositories/introduction/introduction_repository.dart'
    as _i11;
import '../../data/repositories/projects/data_sources/projects_remote_data_source.dart'
    as _i12;
import '../../data/repositories/projects/projects_repository.dart' as _i13;
import '../../data/repositories/skills/data_sources/skills_remote_data_source.dart'
    as _i14;
import '../../data/repositories/skills/skills_repository.dart' as _i15;
import '../../data/repositories/work/data_sources/work_remote_data_source.dart'
    as _i16;
import '../../data/repositories/work/work_repository.dart' as _i17;
import '../../domain/use_cases/about/get_about_use_case.dart' as _i8;
import '../../domain/use_cases/contact/get_contact_information_use_case.dart'
    as _i9;
import '../../domain/use_cases/introduction/get_introduction_use_case.dart'
    as _i18;
import '../../domain/use_cases/projects/get_projects_use_case.dart' as _i19;
import '../../domain/use_cases/skills/get_skills_use_case.dart' as _i20;
import '../../domain/use_cases/work/get_work_use_case.dart' as _i21;
import '../../presentation/features/home/cubit/home_cubit.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AboutRemoteDataSource>(
      () => _i3.AboutRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i5.AboutRepository>(
      () => _i5.AboutRepository(get<_i3.AboutRemoteDataSource>()));
  gh.lazySingleton<_i6.ContactRemoteDataSource>(
      () => _i6.ContactRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i7.ContactRepository>(
      () => _i7.ContactRepository(get<_i6.ContactRemoteDataSource>()));
  gh.factory<_i8.GetAboutUseCase>(
      () => _i8.GetAboutUseCase(get<_i5.AboutRepository>()));
  gh.factory<_i9.GetContactInformationUseCase>(
      () => _i9.GetContactInformationUseCase(get<_i7.ContactRepository>()));
  gh.lazySingleton<_i10.IntroductionRemoteDataSource>(
      () => _i10.IntroductionRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IntroductionRepository>(() =>
      _i11.IntroductionRepository(get<_i10.IntroductionRemoteDataSource>()));
  gh.lazySingleton<_i12.ProjectsRemoteDataSource>(
      () => _i12.ProjectsRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i13.ProjectsRepository>(
      () => _i13.ProjectsRepository(get<_i12.ProjectsRemoteDataSource>()));
  gh.lazySingleton<_i14.SkillsRemoteDataSource>(
      () => _i14.SkillsRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i15.SkillsRepository>(
      () => _i15.SkillsRepository(get<_i14.SkillsRemoteDataSource>()));
  gh.lazySingleton<_i16.WorkRemoteDataSource>(
      () => _i16.WorkRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i17.WorkRepository>(
      () => _i17.WorkRepository(get<_i16.WorkRemoteDataSource>()));
  gh.factory<_i18.GetIntroductionUseCase>(
      () => _i18.GetIntroductionUseCase(get<_i11.IntroductionRepository>()));
  gh.factory<_i19.GetProjectsUseCase>(
      () => _i19.GetProjectsUseCase(get<_i13.ProjectsRepository>()));
  gh.factory<_i20.GetSkillsUseCase>(
      () => _i20.GetSkillsUseCase(get<_i15.SkillsRepository>()));
  gh.factory<_i21.GetWorkUseCase>(
      () => _i21.GetWorkUseCase(get<_i17.WorkRepository>()));
  gh.factory<_i22.HomeCubit>(() => _i22.HomeCubit(
      get<_i18.GetIntroductionUseCase>(),
      get<_i8.GetAboutUseCase>(),
      get<_i20.GetSkillsUseCase>(),
      get<_i21.GetWorkUseCase>(),
      get<_i19.GetProjectsUseCase>(),
      get<_i9.GetContactInformationUseCase>()));
  return get;
}
