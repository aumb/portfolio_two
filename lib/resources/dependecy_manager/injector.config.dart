// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repositories/introduction/data_sources/introduction_remote_data_source.dart'
    as _i3;
import '../../data/repositories/introduction/introduction_repository.dart'
    as _i5;
import '../../domain/use_cases/introduction/get_introduction_use_case.dart'
    as _i6;
import '../../presentation/features/home/cubit/home_cubit.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IntroductionRemoteDataSource>(
      () => _i3.IntroductionRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i5.IntroductionRepository>(() =>
      _i5.IntroductionRepository(get<_i3.IntroductionRemoteDataSource>()));
  gh.factory<_i6.GetIntroductionUseCase>(
      () => _i6.GetIntroductionUseCase(get<_i5.IntroductionRepository>()));
  gh.factory<_i7.HomeCubit>(
      () => _i7.HomeCubit(get<_i6.GetIntroductionUseCase>()));
  return get;
}
