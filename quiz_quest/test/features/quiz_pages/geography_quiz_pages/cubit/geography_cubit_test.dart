import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/general_model/general_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/cubit/general_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/cubit/geography_cubit.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockQuizRepository quizRepository;
  late MockUserRepository userRepository;
  late GeographyCubit sut;

  setUp(() {
    quizRepository = MockQuizRepository();
    userRepository = MockUserRepository();
    sut = GeographyCubit(quizRepository, userRepository);
  });

  final geographyModel = GeographyQuizModel([
    Results5('Geography', 'Question1', 'Answer1', ['Answer1, Answer2, Answer3'])
  ]);

  group('getGeographyCategories', () {
    group('getEasyGeographyCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getEasyGeographyData())
              .thenAnswer((_) async => geographyModel);
        });
        blocTest<GeographyCubit, GeographyState>(
          'should emit Status.loading then Status.success with GeographyModel',
          build: () => sut,
          act: (cubit) => cubit.getEasyGeographyCategory(),
          expect: () => [
            GeographyState(status: Status.loading),
            GeographyState(
                status: Status.success, geographyQuizModel: geographyModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getEasyGeographyData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getEasyGeographyCategory(),
          expect: () => [
            GeographyState(status: Status.loading),
            GeographyState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getMediumGeographyCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getMediumGeographyData())
              .thenAnswer((_) async => geographyModel);
        });
        blocTest<GeographyCubit, GeographyState>(
          'should emit Status.loading then Status.success with GeographyModel',
          build: () => sut,
          act: (cubit) => cubit.getMediumGeographyCategory(),
          expect: () => [
            GeographyState(status: Status.loading),
            GeographyState(
                status: Status.success, geographyQuizModel: geographyModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getMediumGeographyData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getMediumGeographyCategory(),
          expect: () => [
            GeographyState(status: Status.loading),
            GeographyState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('getHardGeographyCategory', () {
      group('success', () {
        setUp(() {
          when(() => quizRepository.getHardGeographyData())
              .thenAnswer((_) async => geographyModel);
        });
        blocTest<GeographyCubit, GeographyState>(
          'should emit Status.loading then Status.success with GeographyModel',
          build: () => sut,
          act: (cubit) => cubit.getHardGeographyCategory(),
          expect: () => [
            GeographyState(status: Status.loading),
            GeographyState(
                status: Status.success, geographyQuizModel: geographyModel),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => quizRepository.getHardGeographyData())
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.getHardGeographyCategory(),
          expect: () => [
            GeographyState(status: Status.loading),
            GeographyState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });

  group('updateGeographyPoints', () {
    group('updateEasyGeographyPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateEasyGeographyPoints(0))
              .thenAnswer((_) async => geographyModel);
        });
        blocTest<GeographyCubit, GeographyState>(
          'should emit Status.loading then Status.success with GeographyModel',
          build: () => sut,
          act: (cubit) => cubit.updateEasyGeographyPoints(0),
          expect: () => [
            GeographyState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateEasyGeographyPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateEasyGeographyPoints(0),
          expect: () => [
            GeographyState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateMediumGeographyPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateMediumGeographyPoints(0))
              .thenAnswer((_) async => geographyModel);
        });
        blocTest<GeographyCubit, GeographyState>(
          'should emit Status.loading then Status.success with GeographyModel',
          build: () => sut,
          act: (cubit) => cubit.updateMediumGeographyPoints(0),
          expect: () => [
            GeographyState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateMediumGeographyPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateMediumGeographyPoints(0),
          expect: () => [
            GeographyState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });

    group('updateHardGeographyPoints', () {
      group('success', () {
        setUp(() {
          when(() => userRepository.updateHardGeographyPoints(0))
              .thenAnswer((_) async => geographyModel);
        });
        blocTest<GeographyCubit, GeographyState>(
          'should emit Status.loading then Status.success with GeographyModel',
          build: () => sut,
          act: (cubit) => cubit.updateHardGeographyPoints(0),
          expect: () => [
            GeographyState(
              status: Status.success,
            ),
          ],
        );
      });

      group('failure', () {
        setUp(() {
          when(() => userRepository.updateHardGeographyPoints(0))
              .thenThrow(Exception('test-exception-error'));
        });
        blocTest(
          'should emit Status.error with errorMessage',
          build: () => sut,
          act: (cubit) => cubit.updateHardGeographyPoints(0),
          expect: () => [
            GeographyState(
                status: Status.error, error: 'Exception: test-exception-error'),
          ],
        );
      });
    });
  });
}
