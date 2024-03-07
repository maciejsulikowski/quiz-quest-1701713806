import 'dart:async';
import 'dart:ffi';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/data/data_sources/achievements_data_source/achievements_data_source.dart';
import 'package:quiz_quest/app/domain/models/achievements_model/achievements_model.dart';
import 'package:quiz_quest/app/domain/repositories/achievement_repository/achievement_repository.dart';

class MockAchievementDataSource extends Mock implements AchievementDataSource {}

void main() {
  late AchievementRepository sut;
  late MockAchievementDataSource dataSource;

  setUp(() {
    dataSource = MockAchievementDataSource();
    sut = AchievementRepository(achievementDataSource: dataSource);
  });

  group('getAchievementModel', () {
    final streamController = StreamController<Map<String, dynamic>>();
    final achievementData = {
      'user_id': 'XXX',
      'is_first_achievement_ready': false,
      'is_second_achievement_ready': false,
      'is_third_achievement_ready': false,
      'is_fourth_achievement_ready': false,
      'is_fifth_achievement_ready': false,
      'is_sixth_achievement_ready': false,
    };
    test('should call achievementDataSource.getAchievementsData() method', () {
      when(() => dataSource.getAchievementsData())
          .thenAnswer((_) => streamController.stream);

      sut.getAchievementsModel();

      verify(() => dataSource.getAchievementsData()).called(1);
    });

    test('should return getAchievementModel successful', () {
      when(() => dataSource.getAchievementsData())
          .thenAnswer((invocation) => streamController.stream);

      final results = sut.getAchievementsModel();

      expectLater(
          results,
          emits(AchievementModel(
              userID: 'XXX',
              isFirstAchievementReady: false,
              isSecondAchievementReady: false,
              isThirdAchievementReady: false,
              isFourthAchievementReady: false,
              isFifthAchievementReady: false,
              isSixthAchievementReady: false)));

      streamController.add(achievementData);

      streamController.close();
    });
  });

  group('setFalseAchievements', () {
    test('should call setFalseAchievements() method', () async {
      when(
        () => dataSource.setFalseAchievements(),
      ).thenAnswer((_) async => {});

      await sut.setFalseAchievements();

      verify(() => dataSource.setFalseAchievements()).called(1);
    });
  });

  group('changeFirstAchievement', () {
    test('should call changeFirstAchievement() method', () async {
      when(
        () => dataSource.changeFirstAchievement(),
      ).thenAnswer((_) async => {});

      await sut.changeFirstAchievement();

      verify(() => dataSource.changeFirstAchievement()).called(1);
    });
  });

  group('changeSecondAchievement', () {
    test('should call changeSecondAchievement() method', () async {
      when(
        () => dataSource.changeSecondAchievement(),
      ).thenAnswer((_) async => {});

      await sut.changeSecondAchievement();

      verify(() => dataSource.changeSecondAchievement()).called(1);
    });
  });

  group('changeThirdAchievement', () {
    test('should call changeThirdAchievement() method', () async {
      when(
        () => dataSource.changeThirdAchievement(),
      ).thenAnswer((_) async => {});

      await sut.changeThirdAchievement();

      verify(() => dataSource.changeThirdAchievement()).called(1);
    });
  });

  group('changeFourthAchievement', () {
    test('should call changeFourthAchievement() method', () async {
      when(
        () => dataSource.changeFourthAchievement(),
      ).thenAnswer((_) async => {});

      await sut.changeFourthAchievement();

      verify(() => dataSource.changeFourthAchievement()).called(1);
    });
  });


  group('changeFifthAchievement', () {
    test('should call changeFifthAchievement() method', () async {
      when(
        () => dataSource.changeFifthAchievement(),
      ).thenAnswer((_) async => {});

      await sut.changeFifthAchievement();

      verify(() => dataSource.changeFifthAchievement()).called(1);
    });
  });

  group('changeSixthAchievement', () {
    test('should call changeSixthAchievement() method', () async {
      when(
        () => dataSource.changeSixthAchievement(),
      ).thenAnswer((_) async => {});

      await sut.changeSixthAchievement();

      verify(() => dataSource.changeSixthAchievement()).called(1);
    });
  });
}
