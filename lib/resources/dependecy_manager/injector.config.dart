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
import '../../data/repositories/introduction/data_sources/introduction_remote_data_source.dart'
    as _i7;
import '../../data/repositories/introduction/introduction_repository.dart'
    as _i8;
import '../../data/repositories/skills/data_sources/skills_remote_data_source.dart'
    as _i9;
import '../../data/repositories/skills/skills_repository.dart' as _i10;
import '../../data/repositories/work/data_sources/work_remote_data_source.dart'
    as _i11;
import '../../data/repositories/work/work_repository.dart' as _i12;
import '../../domain/use_cases/about/get_about_use_case.dart' as _i6;
import '../../domain/use_cases/introduction/get_introduction_use_case.dart'
    as _i13;
import '../../domain/use_cases/skills/get_skills_use_case.dart' as _i14;
import '../../domain/use_cases/work/get_work_use_case.dart' as _i15;
import '../../presentation/features/home/cubit/home_cubit.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AboutRemoteDataSource>(
      () => _i3.AboutRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i5.AboutRepository>(
      () => _i5.AboutRepository(get<_i3.AboutRemoteDataSource>()));
  gh.factory<_i6.GetAboutUseCase>(
      () => _i6.GetAboutUseCase(get<_i5.AboutRepository>()));
  gh.lazySingleton<_i7.IntroductionRemoteDataSource>(
      () => _i7.IntroductionRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IntroductionRepository>(() =>
      _i8.IntroductionRepository(get<_i7.IntroductionRemoteDataSource>()));
  gh.lazySingleton<_i9.SkillsRemoteDataSource>(
      () => _i9.SkillsRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.SkillsRepository>(
      () => _i10.SkillsRepository(get<_i9.SkillsRemoteDataSource>()));
  gh.lazySingleton<_i11.WorkRemoteDataSource>(
      () => _i11.WorkRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.WorkRepository>(
      () => _i12.WorkRepository(get<_i11.WorkRemoteDataSource>()));
  gh.factory<_i13.GetIntroductionUseCase>(
      () => _i13.GetIntroductionUseCase(get<_i8.IntroductionRepository>()));
  gh.factory<_i14.GetSkillsUseCase>(
      () => _i14.GetSkillsUseCase(get<_i10.SkillsRepository>()));
  gh.factory<_i15.GetWorkUseCase>(
      () => _i15.GetWorkUseCase(get<_i12.WorkRepository>()));
  gh.factory<_i16.HomeCubit>(() => _i16.HomeCubit(
      get<_i13.GetIntroductionUseCase>(),
      get<_i6.GetAboutUseCase>(),
      get<_i14.GetSkillsUseCase>(),
      get<_i15.GetWorkUseCase>()));
  return get;
}
