import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/achievements_model/achievements_model.dart';
import 'package:quiz_quest/app/domain/repositories/achievement_repository/achievement_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';

class MockUserRepository extends Mock implements UserRepository {}

class MockAchievementRepository extends Mock implements AchievementRepository {}

class MockStreamSubscription extends Mock implements StreamSubscription {}

void main() {
  late HomeCubit sut;
  late MockUserRepository userRepository;
  late MockAchievementRepository achievementRepository;
  late MockStreamSubscription streamSubscription;

  setUp(() {
    userRepository = MockUserRepository();
    achievementRepository = MockAchievementRepository();
    sut = HomeCubit(userRepository, achievementRepository);
    streamSubscription = MockStreamSubscription();
  });

  final List<Map<String, int>> pointsData = [
    {
      'id': 1,
      'total': 10,
      'easy': 10,
      'medium': 10,
      'hard': 10,
    },
    {
      'id': 2,
      'total': 10,
      'easy': 10,
      'medium': 10,
      'hard': 10,
    },
    {
      'id': 3,
      'total': 10,
      'easy': 10,
      'medium': 10,
      'hard': 10,
    },
    {
      'id': 4,
      'total': 10,
      'easy': 10,
      'medium': 10,
      'hard': 10,
    },
    {
      'id': 5,
      'total': 10,
      'easy': 10,
      'medium': 10,
      'hard': 10,
    },
    {
      'id': 6,
      'total': 10,
      'easy': 10,
      'medium': 10,
      'hard': 10,
    },
    {
      'id': 7,
      'total': 10,
      'easy': 10,
      'medium': 10,
      'hard': 10,
    },
    {
      'id': 8,
      'total': 10,
      'easy': 10,
      'medium': 10,
      'hard': 10,
    },
    {
      'id': 9,
      'total': 10,
      'easy': 10,
      'medium': 10,
      'hard': 10,
    },
  ];
  group('getPointsData', () {
    group('success', () {
      int totalPoints = 0;
      for (var element in pointsData) {
        totalPoints += element['total']!;
      }
      setUp(() {
        when(() => userRepository.getPoints()).thenAnswer((_) => Stream.value(
              pointsData,
            ));
      });

      blocTest<HomeCubit, HomeState>(
        'should emit Status.loading then Status.succes with categoryPoints and totalPoints',
        build: () => sut,
        act: (cubit) {
          cubit.getPointsData();
        },
        expect: () => [
          const HomeState(status: Status.loading),
          HomeState(
            status: Status.success,
            categoryPoints: pointsData,
            totalPoints: totalPoints,
          ),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => userRepository.getPoints()).thenAnswer((_) => Stream.error(
              Exception('test-exception-error'),
            ));
      });

      blocTest<HomeCubit, HomeState>(
        'should emit Status.loading then Status.error with errorMessage',
        build: () => sut,
        act: (cubit) {
          cubit.getPointsData();
        },
        expect: () => [
          const HomeState(status: Status.loading),
          const HomeState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });

  group('getAchievements', () {
    final achievementModel = AchievementModel(
        userID: 'XXX',
        isFirstAchievementReady: false,
        isSecondAchievementReady: false,
        isThirdAchievementReady: false,
        isFourthAchievementReady: false,
        isFifthAchievementReady: false,
        isSixthAchievementReady: false);

    group('success', () {
      int totalPoints = 0;
      for (var element in pointsData) {
        totalPoints += element['total']!;
      }
      setUp(() {
        when(() => achievementRepository.getAchievementsModel())
            .thenAnswer((_) => Stream.value(
                  achievementModel,
                ));
        when(() => userRepository.getPoints()).thenAnswer((_) => Stream.value(
              pointsData,
            ));
      });

      blocTest<HomeCubit, HomeState>(
        '',
        build: () => sut,
        act: (cubit) {
          cubit.getAchievements();
          cubit.getPointsData();
        },
        expect: () => [
          const HomeState(status: Status.loading),
          HomeState(
            status: Status.success,
            achievementModel: achievementModel,
          ),
          HomeState(
            status: Status.loading,
            achievementModel: achievementModel,
          ),
          HomeState(
              status: Status.success,
              categoryPoints: pointsData,
              totalPoints: totalPoints,
              achievementModel: achievementModel),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => achievementRepository.getAchievementsModel())
            .thenAnswer((_) => Stream.error(
                  Exception('test-exception-error'),
                ));
      });

      blocTest<HomeCubit, HomeState>(
        'should emit Status.loading then Status.error with errorMessage',
        build: () => sut,
        act: (cubit) {
          cubit.getAchievements();
        },
        expect: () => [
          const HomeState(status: Status.loading),
          HomeState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
}
