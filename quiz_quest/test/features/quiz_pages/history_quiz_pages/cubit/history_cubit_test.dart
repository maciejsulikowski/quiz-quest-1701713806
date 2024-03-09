import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/general_model/general_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/cubit/general_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/cubit/geography_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/cubit/history_cubit.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockQuizRepository quizRepository;
  late MockUserRepository userRepository;
  late HistoryCubit sut;

  setUp(() {
    quizRepository = MockQuizRepository();
    userRepository = MockUserRepository();
    sut = HistoryCubit(quizRepository, userRepository);
  });

  final historyModel = HistoryQuizModel([
    Results6('History', 'Question1', 'Answer1', ['Answer1, Answer2, Answer3'])
  ]);

  group('getHistoryCategories', () {
    group('getEasyHistoryCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getEasyHistoryData())
              .thenAnswer((_) async => historyModel);
        });
        blocTest<HistoryCubit, HistoryState>(
          'should emit Status.loading then Status.success with historyModel',
          build: () => sut,
          act: (cubit) => cubit.getEasyHistoryCategory(),
          expect: () => [
            HistoryState(status: Status.loading),
            HistoryState(
                status: Status.success, historyQuizModel: historyModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getEasyHistoryData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getEasyHistoryCategory(),
          expect: () => [
            HistoryState(status: Status.loading),
            HistoryState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getMediumHistoryCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getMediumHistoryData())
              .thenAnswer((_) async => historyModel);
        });
        blocTest<HistoryCubit, HistoryState>(
          'should emit Status.loading then Status.success with historyModel',
          build: () => sut,
          act: (cubit) => cubit.getMediumHistoryCategory(),
          expect: () => [
            HistoryState(status: Status.loading),
            HistoryState(
                status: Status.success, historyQuizModel: historyModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getMediumHistoryData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getMediumHistoryCategory(),
          expect: () => [
            HistoryState(status: Status.loading),
            HistoryState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getHardHistoryCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getHardHistoryData())
              .thenAnswer((_) async => historyModel);
        });
        blocTest<HistoryCubit, HistoryState>(
          'should emit Status.loading then Status.success with historyModel',
          build: () => sut,
          act: (cubit) => cubit.getHardHistoryCategory(),
          expect: () => [
            HistoryState(status: Status.loading),
            HistoryState(
                status: Status.success, historyQuizModel: historyModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getHardHistoryData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getHardHistoryCategory(),
          expect: () => [
            HistoryState(status: Status.loading),
            HistoryState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });

  group('updateHistoryPoints', () {
    group('updateEasyHistoryPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateEasyHistoryPoints(0))
              .thenAnswer((_) async => historyModel);
        });
        blocTest<HistoryCubit, HistoryState>(
          'should emit Status.loading then Status.success with historyModel',
          build: () => sut,
          act: (cubit) => cubit.updateEasyHistoryPoints(0),
          expect: () => [
            HistoryState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateEasyHistoryPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateEasyHistoryPoints(0),
          expect: () => [
            HistoryState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateMediumHistoryPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateMediumHistoryPoints(0))
              .thenAnswer((_) async => historyModel);
        });
        blocTest<HistoryCubit, HistoryState>(
          'should emit Status.loading then Status.success with historyModel',
          build: () => sut,
          act: (cubit) => cubit.updateMediumHistoryPoints(0),
          expect: () => [
            HistoryState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateMediumHistoryPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateMediumHistoryPoints(0),
          expect: () => [
            HistoryState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateHardHistoryPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateHardHistoryPoints(0))
              .thenAnswer((_) async => historyModel);
        });
        blocTest<HistoryCubit, HistoryState>(
          'should emit Status.loading then Status.success with historyModel',
          build: () => sut,
          act: (cubit) => cubit.updateHardHistoryPoints(0),
          expect: () => [
            HistoryState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateHardHistoryPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateHardHistoryPoints(0),
          expect: () => [
            HistoryState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });
}
