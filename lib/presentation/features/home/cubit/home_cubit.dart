import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/domain/use_cases/introduction/get_introduction_use_case.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@Injectable()
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._getIntroductionUseCase,
  ) : super(HomeState.initial());

  final GetIntroductionUseCase _getIntroductionUseCase;

  Future<void> init() async {
    emit(
      state.copyWith(
        status: const HomeStatus.loading(),
      ),
    );

    await _getIntroductionUseCase.run();

    emit(
      state.copyWith(
        status: const HomeStatus.loaded(),
      ),
    );
  }
}
