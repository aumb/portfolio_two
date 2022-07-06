import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/domain/use_cases/about/get_about_use_case.dart';
import 'package:portfolio_two/domain/use_cases/introduction/get_introduction_use_case.dart';
import 'package:portfolio_two/domain/use_cases/skills/get_skills_use_case.dart';
import 'package:portfolio_two/domain/use_cases/work/get_work_use_case.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@Injectable()
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._getIntroductionUseCase,
    this._getAboutUseCase,
    this._getSkillsUseCase,
    this._getWorkUseCase,
  ) : super(HomeState.initial());

  final GetIntroductionUseCase _getIntroductionUseCase;
  final GetAboutUseCase _getAboutUseCase;
  final GetSkillsUseCase _getSkillsUseCase;
  final GetWorkUseCase _getWorkUseCase;

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
    final skills = await _getSkillsUseCase.run();
    debugPrint(skills.toString());
    final work = await _getWorkUseCase.run();
    debugPrint(work.toString());

    emit(
      state.copyWith(
        status: const HomeStatus.loaded(),
      ),
    );
  }
}