import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/general_model/general_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/cubit/general_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/cubit/geography_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/cubit/history_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/cubit/music_cubit.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockQuizRepository quizRepository;
  late MockUserRepository userRepository;
  late MusicCubit sut;

  setUp(() {
    quizRepository = MockQuizRepository();
    userRepository = MockUserRepository();
    sut = MusicCubit(quizRepository, userRepository);
  });

  final musicModel = MusicQuizModel([
    Results4('Music', 'Question1', 'Answer1', ['Answer1, Answer2, Answer3'])
  ]);

  group('getMusicCategories', () {
    group('getEasyMusicCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getEasyMusicData())
              .thenAnswer((_) async => musicModel);
        });
        blocTest<MusicCubit, MusicState>(
          'should emit Status.loading then Status.success with MusicModel',
          build: () => sut,
          act: (cubit) => cubit.getEasyMusicCategory(),
          expect: () => [
            MusicState(status: Status.loading),
            MusicState(
                status: Status.success, musicQuizModel: musicModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getEasyMusicData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getEasyMusicCategory(),
          expect: () => [
            MusicState(status: Status.loading),
            MusicState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getMediumMusicCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getMediumMusicData())
              .thenAnswer((_) async => musicModel);
        });
        blocTest<MusicCubit, MusicState>(
          'should emit Status.loading then Status.success with MusicModel',
          build: () => sut,
          act: (cubit) => cubit.getMediumMusicCategory(),
          expect: () => [
            MusicState(status: Status.loading),
            MusicState(
                status: Status.success, musicQuizModel: musicModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getMediumMusicData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getMediumMusicCategory(),
          expect: () => [
            MusicState(status: Status.loading),
            MusicState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getHardMusicCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getHardMusicData())
              .thenAnswer((_) async => musicModel);
        });
        blocTest<MusicCubit, MusicState>(
          'should emit Status.loading then Status.success with MusicModel',
          build: () => sut,
          act: (cubit) => cubit.getHardMusicCategory(),
          expect: () => [
            MusicState(status: Status.loading),
            MusicState(
                status: Status.success, musicQuizModel: musicModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getHardMusicData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getHardMusicCategory(),
          expect: () => [
            MusicState(status: Status.loading),
            MusicState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });

  group('updateMusicPoints', () {
    group('updateEasyMusicPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateEasyMusicPoints(0))
              .thenAnswer((_) async => musicModel);
        });
        blocTest<MusicCubit, MusicState>(
          'should emit Status.loading then Status.success with MusicModel',
          build: () => sut,
          act: (cubit) => cubit.updateEasyMusicPoints(0),
          expect: () => [
            MusicState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateEasyMusicPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateEasyMusicPoints(0),
          expect: () => [
            MusicState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateMediumMusicPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateMediumMusicPoints(0))
              .thenAnswer((_) async => musicModel);
        });
        blocTest<MusicCubit, MusicState>(
          'should emit Status.loading then Status.success with MusicModel',
          build: () => sut,
          act: (cubit) => cubit.updateMediumMusicPoints(0),
          expect: () => [
            MusicState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateMediumMusicPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateMediumMusicPoints(0),
          expect: () => [
            MusicState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateHardMusicPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateHardMusicPoints(0))
              .thenAnswer((_) async => musicModel);
        });
        blocTest<MusicCubit, MusicState>(
          'should emit Status.loading then Status.success with MusicModel',
          build: () => sut,
          act: (cubit) => cubit.updateHardMusicPoints(0),
          expect: () => [
            MusicState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateHardMusicPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateHardMusicPoints(0),
          expect: () => [
            MusicState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });
}
