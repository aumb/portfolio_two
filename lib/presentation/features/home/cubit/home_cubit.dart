import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/domain/use_cases/about/get_about_use_case.dart';
import 'package:portfolio_two/domain/use_cases/introduction/get_introduction_use_case.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@Injectable()
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._getIntroductionUseCase,
    this._getAboutUseCase,
  ) : super(HomeState.initial());

  final GetIntroductionUseCase _getIntroductionUseCase;
  final GetAboutUseCase _getAboutUseCase;

  Future<void> init() async {
    emit(
      state.copyWith(
        status: const HomeStatus.loading(),
      ),
    );

    final introduction = await _getIntroductionUseCase.run();
    debugPrint(introduction.toString());
    final about = await _getAboutUseCase.run();
    debugPrint(about.toString());

    emit(
      state.copyWith(
        status: const HomeStatus.loaded(),
      ),
    );
  }
}
