import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/achievements_model/achievements_model.dart';
import 'package:quiz_quest/app/domain/repositories/achievement_repository/achievement_repository.dart';
import 'package:quiz_quest/app/features/user_page/achievements/cubit/achievements_cubit.dart';

class MockAchievementRepository extends Mock implements AchievementRepository {}

void main() {
  late MockAchievementRepository repository;
  late AchievementsCubit sut;

  setUp(() {
    repository = MockAchievementRepository();
    sut = AchievementsCubit(repository);
  });

  final userData = AchievementModel(
      userID: 'XXX',
      isFirstAchievementReady: false,
      isSecondAchievementReady: false,
      isThirdAchievementReady: false,
      isFourthAchievementReady: false,
      isFifthAchievementReady: false,
      isSixthAchievementReady: false);

  group('getAchievements', () {
    group('success', () {
      setUp(() {
        when(() => repository.getAchievementsModel())
            .thenAnswer((invocation) => Stream.value(userData));
      });

      blocTest(
        'should emit Status.loading then Status.success with achievementModel',
        build: () => sut,
        act: (cubit) => cubit.getAchievements(),
        expect: () => [
          AchievementsState(status: Status.loading),
          AchievementsState(
            achievementModel: userData,
            status: Status.success,
          )
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => repository.getAchievementsModel())
            .thenAnswer((_) => Stream.error(
                  Exception(
                    'test-exception-error',
                  ),
                ));
      });

      blocTest(
        'should emit Status.loading then Status.error with errorMessage',
        build: () => sut,
        act: (cubit) => cubit.getAchievements(),
        expect: () => [
          AchievementsState(status: Status.loading),
          AchievementsState(
            errorMessage: 'Exception: test-exception-error',
            status: Status.error,
          )
        ],
      );
    });
  });
}
