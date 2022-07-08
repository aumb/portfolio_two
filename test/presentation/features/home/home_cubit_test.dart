import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
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
import 'package:portfolio_two/presentation/features/home/cubit/home_cubit.dart';

class MockGetIntroductionUseCase extends Mock
    implements GetIntroductionUseCase {}

class MockGetAboutUseCase extends Mock implements GetAboutUseCase {}

class MockGetSkillsUseCase extends Mock implements GetSkillsUseCase {}

class MockGetProjectsUseCase extends Mock implements GetProjectsUseCase {}

class MockGetWorkUseCase extends Mock implements GetWorkUseCase {}

class MockGetContactInformationUseCase extends Mock
    implements GetContactInformationUseCase {}

void main() {
  late MockGetIntroductionUseCase mockGetIntroductionUseCase;
  late MockGetAboutUseCase mockGetAboutUseCase;
  late MockGetSkillsUseCase mockGetSkillsUseCase;
  late MockGetProjectsUseCase mockGetProjectsUseCase;
  late MockGetWorkUseCase mockGetWorkUseCase;
  late MockGetContactInformationUseCase mockGetContactInformationUseCase;

  final _tIntroduction = Introduction.mock();
  final _tAbout = About.mock();
  final _tSkills = [Skills.mock()];
  final _tProjects = [Project.mock()];
  final _tWork = [Work.mock()];
  final _tContact = Contact.mock();
  final _tException = Exception('');

  setUp(() {
    mockGetIntroductionUseCase = MockGetIntroductionUseCase();
    mockGetAboutUseCase = MockGetAboutUseCase();
    mockGetSkillsUseCase = MockGetSkillsUseCase();
    mockGetProjectsUseCase = MockGetProjectsUseCase();
    mockGetWorkUseCase = MockGetWorkUseCase();
    mockGetContactInformationUseCase = MockGetContactInformationUseCase();

    when(() => mockGetIntroductionUseCase.run()).thenAnswer(
      (_) async => _tIntroduction,
    );
    when(() => mockGetAboutUseCase.run()).thenAnswer(
      (_) async => _tAbout,
    );
    when(() => mockGetSkillsUseCase.run()).thenAnswer(
      (_) async => _tSkills,
    );
    when(() => mockGetProjectsUseCase.run()).thenAnswer(
      (_) async => _tProjects,
    );
    when(() => mockGetWorkUseCase.run()).thenAnswer(
      (_) async => _tWork,
    );
    when(() => mockGetContactInformationUseCase.run()).thenAnswer(
      (_) async => _tContact,
    );
  });

  HomeCubit cubit() => HomeCubit(
        mockGetIntroductionUseCase,
        mockGetAboutUseCase,
        mockGetSkillsUseCase,
        mockGetWorkUseCase,
        mockGetProjectsUseCase,
        mockGetContactInformationUseCase,
      );

  group('HomeCubit', () {
    blocTest<HomeCubit, HomeState>(
      'emits initial state',
      build: cubit,
      verify: (cubit) => expect(
        cubit.state,
        equals(
          HomeState.initial(),
        ),
      ),
    );

    blocTest<HomeCubit, HomeState>(
      'emits [loading, loaded] with updated state elements when init succeeds',
      build: cubit,
      act: (cubit) => cubit.init(),
      expect: () => [
        HomeState.initial().copyWith(
          status: const HomeStatus.loading(),
        ),
        HomeState.initial().copyWith(
          status: const HomeStatus.loaded(),
          introduction: _tIntroduction,
          about: _tAbout,
          skills: _tSkills,
          projects: _tProjects,
          work: _tWork,
          contact: _tContact,
        ),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'emits [loading, error] when an error occurs with one of the calls',
      build: () {
        when(() => mockGetIntroductionUseCase.run()).thenAnswer(
          (_) async => throw _tException,
        );

        return cubit();
      },
      act: (cubit) => cubit.init(),
      expect: () => [
        HomeState.initial().copyWith(
          status: const HomeStatus.loading(),
        ),
        HomeState.initial().copyWith(
          status: HomeStatus.error(_tException),
        )
      ],
    );
  });
}
