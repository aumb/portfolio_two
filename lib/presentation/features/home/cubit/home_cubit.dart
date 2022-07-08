import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_two/domain/models/about/about.dart';
import 'package:portfolio_two/domain/models/contact/contact.dart';
import 'package:portfolio_two/domain/models/introduction/introduction.dart';
import 'package:portfolio_two/domain/models/projects/project.dart';
import 'package:portfolio_two/domain/models/skills/skills.dart';
import 'package:portfolio_two/domain/models/work/work.dart';
import 'package:portfolio_two/domain/use_cases/about/get_about_use_case.dart';
import 'package:portfolio_two/domain/use_cases/contact/get_contact_information_use_case.dart';
import 'package:portfolio_two/domain/use_cases/introduction/get_introduction_use_case.dart';
import 'package:portfolio_two/domain/use_cases/projects/get_projects_use_case.dart';
import 'package:portfolio_two/domain/use_cases/skills/get_skills_use_case.dart';
import 'package:portfolio_two/domain/use_cases/work/get_work_use_case.dart';
import 'package:portfolio_two/resources/extensions/future_extensions.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@Injectable()
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._getIntroductionUseCase,
    this._getAboutUseCase,
    this._getSkillsUseCase,
    this._getWorkUseCase,
    this._getProjectsUseCase,
    this._getContactInformationUseCase,
  ) : super(HomeState.initial());

  final GetIntroductionUseCase _getIntroductionUseCase;
  final GetAboutUseCase _getAboutUseCase;
  final GetSkillsUseCase _getSkillsUseCase;
  final GetWorkUseCase _getWorkUseCase;
  final GetProjectsUseCase _getProjectsUseCase;
  final GetContactInformationUseCase _getContactInformationUseCase;

  Future<void> init() async {
    emit(
      state.copyWith(
        status: const HomeStatus.loading(),
      ),
    );

    await Future.wait([
      getIntroduction(),
      getAbout(),
      getSkills(),
      getProjects(),
      getWork(),
      getContactInformation()
    ]).then((results) {
      emit(
        state.copyWith(
          status: const HomeStatus.loaded(),
          introduction: results[0] as Introduction,
          about: results[1] as About,
          skills: results[2] as List<Skills>,
          projects: results[3] as List<Project>,
          work: results[4] as List<Work>,
          contact: results[5] as Contact,
        ),
      );
    }).catchPrintError(
      (e, _) => emit(
        state.copyWith(
          status: HomeStatus.error(e),
        ),
      ),
    );
  }

  Future<Introduction> getIntroduction() {
    return _getIntroductionUseCase.run();
  }

  Future<About> getAbout() {
    return _getAboutUseCase.run();
  }

  Future<List<Skills>> getSkills() {
    return _getSkillsUseCase.run();
  }

  Future<List<Project>> getProjects() {
    return _getProjectsUseCase.run();
  }

  Future<List<Work>> getWork() {
    return _getWorkUseCase.run();
  }

  Future<Contact> getContactInformation() {
    return _getContactInformationUseCase.run();
  }
}
