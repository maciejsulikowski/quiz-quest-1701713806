import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/general_model/general_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/cubit/general_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/cubit/geography_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/cubit/history_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/cubit/music_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/cubit/nature_cubit.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockQuizRepository quizRepository;
  late MockUserRepository userRepository;
  late NatureCubit sut;

  setUp(() {
    quizRepository = MockQuizRepository();
    userRepository = MockUserRepository();
    sut = NatureCubit(quizRepository, userRepository);
  });

  final natureModel = NatureQuizModel([
    Results7('Nature', 'Question1', 'Answer1', ['Answer1, Answer2, Answer3'])
  ]);

  group('getNatureCategories', () {
    group('getEasyNatureCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getEasyNatureData())
              .thenAnswer((_) async => natureModel);
        });
        blocTest<NatureCubit, NatureState>(
          'should emit Status.loading then Status.success with NatureModel',
          build: () => sut,
          act: (cubit) => cubit.getEasyNatureCategory(),
          expect: () => [
            NatureState(status: Status.loading),
            NatureState(status: Status.success, natureQuizModel: natureModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getEasyNatureData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getEasyNatureCategory(),
          expect: () => [
            NatureState(status: Status.loading),
            NatureState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getMediumNatureCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getMediumNatureData())
              .thenAnswer((_) async => natureModel);
        });
        blocTest<NatureCubit, NatureState>(
          'should emit Status.loading then Status.success with NatureModel',
          build: () => sut,
          act: (cubit) => cubit.getMediumNatureCategory(),
          expect: () => [
            NatureState(status: Status.loading),
            NatureState(status: Status.success, natureQuizModel: natureModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getMediumNatureData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getMediumNatureCategory(),
          expect: () => [
            NatureState(status: Status.loading),
            NatureState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getHardNatureCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getHardNatureData())
              .thenAnswer((_) async => natureModel);
        });
        blocTest<NatureCubit, NatureState>(
          'should emit Status.loading then Status.success with NatureModel',
          build: () => sut,
          act: (cubit) => cubit.getHardNatureCategory(),
          expect: () => [
            NatureState(status: Status.loading),
            NatureState(status: Status.success, natureQuizModel: natureModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getHardNatureData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getHardNatureCategory(),
          expect: () => [
            NatureState(status: Status.loading),
            NatureState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });

  group('updateNaturePoints', () {
    group('updateEasyNaturePoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateEasyNaturePoints(0))
              .thenAnswer((_) async => natureModel);
        });
        blocTest<NatureCubit, NatureState>(
          'should emit Status.loading then Status.success with NatureModel',
          build: () => sut,
          act: (cubit) => cubit.updateEasyNaturePoints(0),
          expect: () => [
            NatureState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateEasyNaturePoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateEasyNaturePoints(0),
          expect: () => [
            NatureState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateMediumNaturePoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateMediumNaturePoints(0))
              .thenAnswer((_) async => natureModel);
        });
        blocTest<NatureCubit, NatureState>(
          'should emit Status.loading then Status.success with NatureModel',
          build: () => sut,
          act: (cubit) => cubit.updateMediumNaturePoints(0),
          expect: () => [
            NatureState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateMediumNaturePoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateMediumNaturePoints(0),
          expect: () => [
            NatureState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateHardNaturePoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateHardNaturePoints(0))
              .thenAnswer((_) async => natureModel);
        });
        blocTest<NatureCubit, NatureState>(
          'should emit Status.loading then Status.success with NatureModel',
          build: () => sut,
          act: (cubit) => cubit.updateHardNaturePoints(0),
          expect: () => [
            NatureState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateHardNaturePoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateHardNaturePoints(0),
          expect: () => [
            NatureState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });
}
