import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockQuizRepository quizRepository;
  late MockUserRepository userRepository;
  late FilmsCubit sut;

  setUp(() {
    quizRepository = MockQuizRepository();
    userRepository = MockUserRepository();
    sut = FilmsCubit(quizRepository, userRepository);
  });

  final filmsModel = FilmsQuizModel([
    Results2('Films', 'Question1', 'Answer1', ['Answer1, Answer2, Answer3'])
  ]);

  group('getFilmsCategories', () {
    group('getEasyFilmsCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getEasyFilmsData())
              .thenAnswer((_) async => filmsModel);
        });
        blocTest<FilmsCubit, FilmsState>(
          'should emit Status.loading then Status.success with filmsModel',
          build: () => sut,
          act: (cubit) => cubit.getEasyFilmsCategory(),
          expect: () => [
            FilmsState(status: Status.loading),
            FilmsState(status: Status.success, filmsQuizModel: filmsModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getEasyFilmsData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getEasyFilmsCategory(),
          expect: () => [
            FilmsState(status: Status.loading),
            FilmsState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getMediumFilmsCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getMediumFilmsData())
              .thenAnswer((_) async => filmsModel);
        });
        blocTest<FilmsCubit, FilmsState>(
          'should emit Status.loading then Status.success with filmsModel',
          build: () => sut,
          act: (cubit) => cubit.getMediumFilmsCategory(),
          expect: () => [
            FilmsState(status: Status.loading),
            FilmsState(status: Status.success, filmsQuizModel: filmsModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getMediumFilmsData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getMediumFilmsCategory(),
          expect: () => [
            FilmsState(status: Status.loading),
            FilmsState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getHardFilmsCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getHardFilmsData())
              .thenAnswer((_) async => filmsModel);
        });
        blocTest<FilmsCubit, FilmsState>(
          'should emit Status.loading then Status.success with filmsModel',
          build: () => sut,
          act: (cubit) => cubit.getHardFilmsCategory(),
          expect: () => [
            FilmsState(status: Status.loading),
            FilmsState(status: Status.success, filmsQuizModel: filmsModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getHardFilmsData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getHardFilmsCategory(),
          expect: () => [
            FilmsState(status: Status.loading),
            FilmsState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });

  group('updateFilmsPoints', () {
    group('updateEasyFilmsPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateEasyFilmsPoints(0))
              .thenAnswer((_) async => filmsModel);
        });
        blocTest<FilmsCubit, FilmsState>(
          'should emit Status.loading then Status.success with filmsModel',
          build: () => sut,
          act: (cubit) => cubit.updateEasyFilmsPoints(0),
          expect: () => [
            FilmsState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateEasyFilmsPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateEasyFilmsPoints(0),
          expect: () => [
            FilmsState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateMediumFilmsPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateMediumFilmsPoints(0))
              .thenAnswer((_) async => filmsModel);
        });
        blocTest<FilmsCubit, FilmsState>(
          'should emit Status.loading then Status.success with filmsModel',
          build: () => sut,
          act: (cubit) => cubit.updateMediumFilmsPoints(0),
          expect: () => [
            FilmsState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateMediumFilmsPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateMediumFilmsPoints(0),
          expect: () => [
            FilmsState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

   group('updateHardFilmsPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateHardFilmsPoints(0))
              .thenAnswer((_) async => filmsModel);
        });
        blocTest<FilmsCubit, FilmsState>(
          'should emit Status.loading then Status.success with filmsModel',
          build: () => sut,
          act: (cubit) => cubit.updateHardFilmsPoints(0),
          expect: () => [
            FilmsState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateHardFilmsPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateHardFilmsPoints(0),
          expect: () => [
            FilmsState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });
}
