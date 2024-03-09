import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/cubit/sport_cubit.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockQuizRepository quizRepository;
  late MockUserRepository userRepository;
  late SportCubit sut;

  setUp(() {
    quizRepository = MockQuizRepository();
    userRepository = MockUserRepository();
    sut = SportCubit(quizRepository, userRepository);
  });

  final sportModel = SportsQuizModel([
    Results1('Sport', 'Question1', 'Answer1', ['Answer1, Answer2, Answer3'])
  ]);

  group('getSportCategories', () {
    group('getEasySportCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getEasySportData())
              .thenAnswer((_) async => sportModel);
        });
        blocTest<SportCubit, SportState>(
          'should emit Status.loading then Status.success with SportModel',
          build: () => sut,
          act: (cubit) => cubit.getEasySportsCategory(),
          expect: () => [
            SportState(status: Status.loading),
            SportState(status: Status.success, sportsQuizModel: sportModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getEasySportData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getEasySportsCategory(),
          expect: () => [
            SportState(status: Status.loading),
            SportState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getMediumSportCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getMediumSportData())
              .thenAnswer((_) async =>sportModel);
        });
        blocTest<SportCubit, SportState>(
          'should emit Status.loading then Status.success with SportModel',
          build: () => sut,
          act: (cubit) => cubit.getMediumSportsCategory(),
          expect: () => [
            SportState(status: Status.loading),
            SportState(status: Status.success, sportsQuizModel: sportModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getMediumSportData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getMediumSportsCategory(),
          expect: () => [
            SportState(status: Status.loading),
            SportState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getHardSportCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getHardSportData())
              .thenAnswer((_) async => sportModel);
        });
        blocTest<SportCubit, SportState>(
          'should emit Status.loading then Status.success with SportModel',
          build: () => sut,
          act: (cubit) => cubit.getHardSportsCategory(),
          expect: () => [
            SportState(status: Status.loading),
            SportState(status: Status.success, sportsQuizModel: sportModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getHardSportData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getHardSportsCategory(),
          expect: () => [
            SportState(status: Status.loading),
            SportState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });

  group('updateSportPoints', () {
    group('updateEasySportPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateEasySportPoints(0))
              .thenAnswer((_) async => sportModel);
        });
        blocTest<SportCubit, SportState>(
          'should emit Status.loading then Status.success with SportModel',
          build: () => sut,
          act: (cubit) => cubit.updateEasySportsPoints(0),
          expect: () => [
            SportState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateEasySportPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateEasySportsPoints(0),
          expect: () => [
            SportState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateMediumSportPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateMediumSportPoints(0))
              .thenAnswer((_) async =>sportModel);
        });
        blocTest<SportCubit, SportState>(
          'should emit Status.loading then Status.success with SportModel',
          build: () => sut,
          act: (cubit) => cubit.updateMediumSportsPoints(0),
          expect: () => [
            SportState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateMediumSportPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateMediumSportsPoints(0),
          expect: () => [
            SportState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateHardSportPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateHardSportPoints(0))
              .thenAnswer((_) async => sportModel);
        });
        blocTest<SportCubit, SportState>(
          'should emit Status.loading then Status.success with SportModel',
          build: () => sut,
          act: (cubit) => cubit.updateHardSportsPoints(0),
          expect: () => [
            SportState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateHardSportPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateHardSportsPoints(0),
          expect: () => [
            SportState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });
}
