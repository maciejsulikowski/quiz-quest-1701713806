import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/cubit/sport_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/tv_quiz_pages/cubit/tv_cubit.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockQuizRepository quizRepository;
  late MockUserRepository userRepository;
  late TVCubit sut;

  setUp(() {
    quizRepository = MockQuizRepository();
    userRepository = MockUserRepository();
    sut = TVCubit(quizRepository, userRepository);
  });

  final TVModel = TVQuizModel([
    Results8('TV', 'Question1', 'Answer1', ['Answer1, Answer2, Answer3'])
  ]);

  group('getTVCategories', () {
    group('getEasyTVCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getEasyTVData())
              .thenAnswer((_) async => TVModel);
        });
        blocTest<TVCubit, TVState>(
          'should emit Status.loading then Status.success with TVModel',
          build: () => sut,
          act: (cubit) => cubit.getEasyTVCategory(),
          expect: () => [
            TVState(status: Status.loading),
            TVState(status: Status.success, tvQuizModel: TVModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getEasyTVData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getEasyTVCategory(),
          expect: () => [
            TVState(status: Status.loading),
            TVState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getMediumTVCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getMediumTVData())
              .thenAnswer((_) async => TVModel);
        });
        blocTest<TVCubit, TVState>(
          'should emit Status.loading then Status.success with TVModel',
          build: () => sut,
          act: (cubit) => cubit.getMediumTVCategory(),
          expect: () => [
            TVState(status: Status.loading),
            TVState(status: Status.success, tvQuizModel: TVModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getMediumTVData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getMediumTVCategory(),
          expect: () => [
            TVState(status: Status.loading),
            TVState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getHardTVCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getHardTVData())
              .thenAnswer((_) async => TVModel);
        });
        blocTest<TVCubit, TVState>(
          'should emit Status.loading then Status.success with TVModel',
          build: () => sut,
          act: (cubit) => cubit.getHardTVCategory(),
          expect: () => [
            TVState(status: Status.loading),
            TVState(status: Status.success, tvQuizModel: TVModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getHardTVData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getHardTVCategory(),
          expect: () => [
            TVState(status: Status.loading),
            TVState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });

  group('updateTVPoints', () {
    group('updateEasyTVPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateEasyTVPoints(0))
              .thenAnswer((_) async => TVModel);
        });
        blocTest<TVCubit, TVState>(
          'should emit Status.loading then Status.success with TVModel',
          build: () => sut,
          act: (cubit) => cubit.updateEasyTVPoints(0),
          expect: () => [
            TVState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateEasyTVPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateEasyTVPoints(0),
          expect: () => [
            TVState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateMediumTVPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateMediumTVPoints(0))
              .thenAnswer((_) async => TVModel);
        });
        blocTest<TVCubit, TVState>(
          'should emit Status.loading then Status.success with TVModel',
          build: () => sut,
          act: (cubit) => cubit.updateMediumTVPoints(0),
          expect: () => [
            TVState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateMediumTVPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateMediumTVPoints(0),
          expect: () => [
            TVState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateHardTVPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateHardTVPoints(0))
              .thenAnswer((_) async => TVModel);
        });
        blocTest<TVCubit, TVState>(
          'should emit Status.loading then Status.success with TVModel',
          build: () => sut,
          act: (cubit) => cubit.updateHardTVPoints(0),
          expect: () => [
            TVState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateHardTVPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateHardTVPoints(0),
          expect: () => [
            TVState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });
}
