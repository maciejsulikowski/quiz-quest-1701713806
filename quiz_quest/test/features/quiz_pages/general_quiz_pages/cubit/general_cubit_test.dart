import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/general_model/general_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/cubit/general_cubit.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockQuizRepository quizRepository;
  late MockUserRepository userRepository;
  late GeneralCubit sut;

  setUp(() {
    quizRepository = MockQuizRepository();
    userRepository = MockUserRepository();
    sut = GeneralCubit(quizRepository, userRepository);
  });

  final generalModel = GeneralQuizModel([
    Results9('General', 'Question1', 'Answer1', ['Answer1, Answer2, Answer3'])
  ]);

  group('getGeneralCategories', () {
    group('getEasyGeneralCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getEasyGeneralData())
              .thenAnswer((_) async => generalModel);
        });
        blocTest<GeneralCubit, GeneralState>(
          'should emit Status.loading then Status.success with generalModel',
          build: () => sut,
          act: (cubit) => cubit.getEasyGeneralCategory(),
          expect: () => [
            GeneralState(status: Status.loading),
            GeneralState(
                status: Status.success, generalQuizModel: generalModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getEasyGeneralData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getEasyGeneralCategory(),
          expect: () => [
            GeneralState(status: Status.loading),
            GeneralState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getMediumGeneralCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getMediumGeneralData())
              .thenAnswer((_) async => generalModel);
        });
        blocTest<GeneralCubit, GeneralState>(
          'should emit Status.loading then Status.success with generalModel',
          build: () => sut,
          act: (cubit) => cubit.getMediumGeneralCategory(),
          expect: () => [
            GeneralState(status: Status.loading),
            GeneralState(
                status: Status.success, generalQuizModel: generalModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getMediumGeneralData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getMediumGeneralCategory(),
          expect: () => [
            GeneralState(status: Status.loading),
            GeneralState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getHardGeneralCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getHardGeneralData())
              .thenAnswer((_) async => generalModel);
        });
        blocTest<GeneralCubit, GeneralState>(
          'should emit Status.loading then Status.success with generalModel',
          build: () => sut,
          act: (cubit) => cubit.getHardGeneralCategory(),
          expect: () => [
            GeneralState(status: Status.loading),
            GeneralState(
                status: Status.success, generalQuizModel: generalModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getHardGeneralData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getHardGeneralCategory(),
          expect: () => [
            GeneralState(status: Status.loading),
            GeneralState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });

  group('updateGeneralPoints', () {
    group('updateEasyGeneralPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateEasyGeneralPoints(0))
              .thenAnswer((_) async => generalModel);
        });
        blocTest<GeneralCubit, GeneralState>(
          'should emit Status.loading then Status.success with generalModel',
          build: () => sut,
          act: (cubit) => cubit.updateEasyGeneralPoints(0),
          expect: () => [
            GeneralState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateEasyGeneralPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateEasyGeneralPoints(0),
          expect: () => [
            GeneralState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateMediumGeneralPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateMediumGeneralPoints(0))
              .thenAnswer((_) async => generalModel);
        });
        blocTest<GeneralCubit, GeneralState>(
          'should emit Status.loading then Status.success with generalModel',
          build: () => sut,
          act: (cubit) => cubit.updateMediumGeneralPoints(0),
          expect: () => [
            GeneralState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateMediumGeneralPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateMediumGeneralPoints(0),
          expect: () => [
            GeneralState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateHardGeneralPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateHardGeneralPoints(0))
              .thenAnswer((_) async => generalModel);
        });
        blocTest<GeneralCubit, GeneralState>(
          'should emit Status.loading then Status.success with generalModel',
          build: () => sut,
          act: (cubit) => cubit.updateHardGeneralPoints(0),
          expect: () => [
            GeneralState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateHardGeneralPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateHardGeneralPoints(0),
          expect: () => [
            GeneralState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });
}
