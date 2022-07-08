// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repositories/about/about_repository.dart' as _i5;
import '../../data/repositories/about/data_sources/about_remote_data_source.dart'
    as _i3;
import '../../data/repositories/authentication/authentication_repository.dart'
    as _i8;
import '../../data/repositories/authentication/data_sources/authentication_remote_data_source.dart'
    as _i6;
import '../../data/repositories/contact/contact_repository.dart' as _i10;
import '../../data/repositories/contact/data_sources/contact_remote_data_source.dart'
    as _i9;
import '../../data/repositories/introduction/data_sources/introduction_remote_data_source.dart'
    as _i13;
import '../../data/repositories/introduction/introduction_repository.dart'
    as _i14;
import '../../data/repositories/projects/data_sources/projects_remote_data_source.dart'
    as _i15;
import '../../data/repositories/projects/projects_repository.dart' as _i16;
import '../../data/repositories/skills/data_sources/skills_remote_data_source.dart'
    as _i18;
import '../../data/repositories/skills/skills_repository.dart' as _i19;
import '../../data/repositories/work/data_sources/work_remote_data_source.dart'
    as _i20;
import '../../data/repositories/work/work_repository.dart' as _i21;
import '../../domain/use_cases/about/get_about_use_case.dart' as _i11;
import '../../domain/use_cases/authentication/sign_in_anonymously_use_case.dart'
    as _i17;
import '../../domain/use_cases/contact/get_contact_information_use_case.dart'
    as _i12;
import '../../domain/use_cases/introduction/get_introduction_use_case.dart'
    as _i22;
import '../../domain/use_cases/projects/get_projects_use_case.dart' as _i23;
import '../../domain/use_cases/skills/get_skills_use_case.dart' as _i24;
import '../../domain/use_cases/work/get_work_use_case.dart' as _i25;
import '../../presentation/features/home/cubit/home_cubit.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AboutRemoteDataSource>(
      () => _i3.AboutRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i5.AboutRepository>(
      () => _i5.AboutRepository(get<_i3.AboutRemoteDataSource>()));
  gh.lazySingleton<_i6.AuthenticationRemoteDataSource>(
      () => _i6.AuthenticationRemoteDataSource(get<_i7.FirebaseAuth>()));
  gh.lazySingleton<_i8.AuthenticationRepository>(() =>
      _i8.AuthenticationRepository(get<_i6.AuthenticationRemoteDataSource>()));
  gh.lazySingleton<_i9.ContactRemoteDataSource>(
      () => _i9.ContactRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.ContactRepository>(
      () => _i10.ContactRepository(get<_i9.ContactRemoteDataSource>()));
  gh.factory<_i11.GetAboutUseCase>(
      () => _i11.GetAboutUseCase(get<_i5.AboutRepository>()));
  gh.factory<_i12.GetContactInformationUseCase>(
      () => _i12.GetContactInformationUseCase(get<_i10.ContactRepository>()));
  gh.lazySingleton<_i13.IntroductionRemoteDataSource>(
      () => _i13.IntroductionRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.IntroductionRepository>(() =>
      _i14.IntroductionRepository(get<_i13.IntroductionRemoteDataSource>()));
  gh.lazySingleton<_i15.ProjectsRemoteDataSource>(
      () => _i15.ProjectsRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i16.ProjectsRepository>(
      () => _i16.ProjectsRepository(get<_i15.ProjectsRemoteDataSource>()));
  gh.factory<_i17.SignInAnonymouslyUseCase>(
      () => _i17.SignInAnonymouslyUseCase(get<_i8.AuthenticationRepository>()));
  gh.lazySingleton<_i18.SkillsRemoteDataSource>(
      () => _i18.SkillsRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i19.SkillsRepository>(
      () => _i19.SkillsRepository(get<_i18.SkillsRemoteDataSource>()));
  gh.lazySingleton<_i20.WorkRemoteDataSource>(
      () => _i20.WorkRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i21.WorkRepository>(
      () => _i21.WorkRepository(get<_i20.WorkRemoteDataSource>()));
  gh.factory<_i22.GetIntroductionUseCase>(
      () => _i22.GetIntroductionUseCase(get<_i14.IntroductionRepository>()));
  gh.factory<_i23.GetProjectsUseCase>(
      () => _i23.GetProjectsUseCase(get<_i16.ProjectsRepository>()));
  gh.factory<_i24.GetSkillsUseCase>(
      () => _i24.GetSkillsUseCase(get<_i19.SkillsRepository>()));
  gh.factory<_i25.GetWorkUseCase>(
      () => _i25.GetWorkUseCase(get<_i21.WorkRepository>()));
  gh.factory<_i26.HomeCubit>(() => _i26.HomeCubit(
      get<_i22.GetIntroductionUseCase>(),
      get<_i11.GetAboutUseCase>(),
      get<_i24.GetSkillsUseCase>(),
      get<_i25.GetWorkUseCase>(),
      get<_i23.GetProjectsUseCase>(),
      get<_i12.GetContactInformationUseCase>(),
      get<_i17.SignInAnonymouslyUseCase>()));
  return get;
}
