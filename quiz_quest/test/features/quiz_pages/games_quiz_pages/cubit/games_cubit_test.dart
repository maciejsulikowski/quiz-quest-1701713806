import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/cubit/games_cubit.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockQuizRepository quizRepository;
  late MockUserRepository userRepository;
  late GamesCubit sut;

  setUp(() {
    quizRepository = MockQuizRepository();
    userRepository = MockUserRepository();
    sut = GamesCubit(quizRepository, userRepository);
  });

  final gamesModel = GamesQuizModel([
    Results3('Films', 'Question1', 'Answer1', ['Answer1, Answer2, Answer3'])
  ]);

  group('getGamesCategories', () {
    group('getEasyGamesCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getEasyGamesData())
              .thenAnswer((_) async => gamesModel);
        });
        blocTest<GamesCubit, GamesState>(
          'should emit Status.loading then Status.success with gamesModel',
          build: () => sut,
          act: (cubit) => cubit.getEasyGamesCategory(),
          expect: () => [
            GamesState(status: Status.loading),
            GamesState(status: Status.success, gamesQuizModel: gamesModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getEasyGamesData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getEasyGamesCategory(),
          expect: () => [
            GamesState(status: Status.loading),
            GamesState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getMediumGamesCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getMediumGamesData())
              .thenAnswer((_) async => gamesModel);
        });
        blocTest<GamesCubit, GamesState>(
          'should emit Status.loading then Status.success with gamesModel',
          build: () => sut,
          act: (cubit) => cubit.getMediumGamesCategory(),
          expect: () => [
            GamesState(status: Status.loading),
            GamesState(status: Status.success, gamesQuizModel: gamesModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getMediumGamesData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getMediumGamesCategory(),
          expect: () => [
            GamesState(status: Status.loading),
            GamesState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getHardGamesCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getHardGamesData())
              .thenAnswer((_) async => gamesModel);
        });
        blocTest<GamesCubit, GamesState>(
          'should emit Status.loading then Status.success with gamesModel',
          build: () => sut,
          act: (cubit) => cubit.getHardGamesCategory(),
          expect: () => [
            GamesState(status: Status.loading),
            GamesState(status: Status.success, gamesQuizModel: gamesModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getHardGamesData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getHardGamesCategory(),
          expect: () => [
            GamesState(status: Status.loading),
            GamesState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });

  group('updateGamesPoints', () {
    group('updateEasyGamesPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateEasyGamesPoints(0))
              .thenAnswer((_) async => gamesModel);
        });
        blocTest<GamesCubit, GamesState>(
          'should emit Status.loading then Status.success with gamesModel',
          build: () => sut,
          act: (cubit) => cubit.updateEasyGamesPoints(0),
          expect: () => [
            GamesState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateEasyGamesPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateEasyGamesPoints(0),
          expect: () => [
            GamesState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateMediumGamesPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateMediumGamesPoints(0))
              .thenAnswer((_) async => gamesModel);
        });
        blocTest<GamesCubit, GamesState>(
          'should emit Status.loading then Status.success with gamesModel',
          build: () => sut,
          act: (cubit) => cubit.updateMediumGamesPoints(0),
          expect: () => [
            GamesState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateMediumGamesPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateMediumGamesPoints(0),
          expect: () => [
            GamesState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateHardGamesPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateHardGamesPoints(0))
              .thenAnswer((_) async => gamesModel);
        });
        blocTest<GamesCubit, GamesState>(
          'should emit Status.loading then Status.success with gamesModel',
          build: () => sut,
          act: (cubit) => cubit.updateHardGamesPoints(0),
          expect: () => [
            GamesState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateHardGamesPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateHardGamesPoints(0),
          expect: () => [
            GamesState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });
}
