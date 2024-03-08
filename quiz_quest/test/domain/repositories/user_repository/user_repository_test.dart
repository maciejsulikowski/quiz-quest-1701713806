import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/data/data_sources/achievements_data_source/achievements_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/models/user_model/user_model.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';

class MockUserDataSource extends Mock implements UserDataSource {}

class MockAchievementDataSource extends Mock implements AchievementDataSource {}

void main() {
  late MockUserDataSource firstDataSource;
  late MockAchievementDataSource secondDataSource;

  late UserRepository sut;

  setUp(() {
    firstDataSource = MockUserDataSource();
    secondDataSource = MockAchievementDataSource();

    sut = UserRepository(firstDataSource, secondDataSource);
  });

  group('getUserModel', () {
    final streamController = StreamController<Map<String, dynamic>>();
    final userData = {
      'name': 'Maciek',
      'surname': 'Sulik',
      'image_url': 'image_url',
      'gender': 'Male',
      'favourite_categories': 'Animals',
      'is_user_new': true,
    };
    test('should call getUserModel() method', () {
      when(() => firstDataSource.getUserData())
          .thenAnswer((_) => streamController.stream);

      sut.userDataSource.getUserData();

      verify(() => firstDataSource.getUserData()).called(1);
    });
    test('should return getUserModel successful', () {
      when(() => firstDataSource.getUserData())
          .thenAnswer((_) => streamController.stream);

      final results = sut.getUserModel();

      expectLater(
          results,
          emits(UserModel(
              name: 'Maciek',
              surname: 'Sulik',
              imageURL: 'image_url',
              gender: 'Male',
              favouriteCategory: 'Animals',
              isUserNew: true)));
    });

    streamController.add(userData);

    streamController.close();
  });

  group('getPoints', () {
    final streamController = StreamController<Map<String, dynamic>>();

    test('should call getPoints() method', () {
      when(() => firstDataSource.getPointsData())
          .thenAnswer((_) => streamController.stream);

      sut.userDataSource.getPointsData();

      verify(() => firstDataSource.getPointsData()).called(1);
    });
  });

  group('games', () {
    test('should call updateEasyGamesPoints() method', () async {
      when(() => firstDataSource.updateEasyGamesPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyGamesPoints(0);

      verify(() => firstDataSource.updateEasyGamesPoints(0)).called(1);
    });

    test('should call updateMediumGamesPoints() method', () async {
      when(() => firstDataSource.updateMediumGamesPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumGamesPoints(0);

      verify(() => firstDataSource.updateMediumGamesPoints(0)).called(1);
    });

    test('should call updateHardGamesPoints() method', () async {
      when(() => firstDataSource.updateHardGamesPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardGamesPoints(0);

      verify(() => firstDataSource.updateHardGamesPoints(0)).called(1);
    });
  });

  group('films', () {
    test('should call updateEasyFilmPoints() method', () async {
      when(() => firstDataSource.updateEasyFilmPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyFilmsPoints(0);

      verify(() => firstDataSource.updateEasyFilmPoints(0)).called(1);
    });

    test('should call updateMediumFilmPoints() method', () async {
      when(() => firstDataSource.updateMediumFilmPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumFilmsPoints(0);

      verify(() => firstDataSource.updateMediumFilmPoints(0)).called(1);
    });

    test('should call updateHardFilmPoints() method', () async {
      when(() => firstDataSource.updateHardFilmPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardFilmsPoints(0);

      verify(() => firstDataSource.updateHardFilmPoints(0)).called(1);
    });
  });

  group('geography', () {
    test('should call updateEasyGeographyPoints() method', () async {
      when(() => firstDataSource.updateEasyGeographyPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyGeographyPoints(0);

      verify(() => firstDataSource.updateEasyGeographyPoints(0)).called(1);
    });

    test('should call updateMediumGeographyPoints() method', () async {
      when(() => firstDataSource.updateMediumGeographyPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumGeographyPoints(0);

      verify(() => firstDataSource.updateMediumGeographyPoints(0)).called(1);
    });

    test('should call updateHardGeographyPoints() method', () async {
      when(() => firstDataSource.updateHardGeographyPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardGeographyPoints(0);

      verify(() => firstDataSource.updateHardGeographyPoints(0)).called(1);
    });
  });

  group('history', () {
    test('should call updateEasyHistoryPoints() method', () async {
      when(() => firstDataSource.updateEasyHistoryPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyHistoryPoints(0);

      verify(() => firstDataSource.updateEasyHistoryPoints(0)).called(1);
    });

    test('should call updateMediumHistoryPoints() method', () async {
      when(() => firstDataSource.updateMediumHistoryPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumHistoryPoints(0);

      verify(() => firstDataSource.updateMediumHistoryPoints(0)).called(1);
    });

    test('should call updateHardHistoryPoints() method', () async {
      when(() => firstDataSource.updateHardHistoryPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardHistoryPoints(0);

      verify(() => firstDataSource.updateHardHistoryPoints(0)).called(1);
    });
  });

  group('music', () {
    test('should call updateEasyMusicPoints() method', () async {
      when(() => firstDataSource.updateEasyMusicPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyMusicPoints(0);

      verify(() => firstDataSource.updateEasyMusicPoints(0)).called(1);
    });

    test('should call updateMediumMusicPoints() method', () async {
      when(() => firstDataSource.updateMediumMusicPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumMusicPoints(0);

      verify(() => firstDataSource.updateMediumMusicPoints(0)).called(1);
    });

    test('should call updateHardMusicPoints() method', () async {
      when(() => firstDataSource.updateHardMusicPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardMusicPoints(0);

      verify(() => firstDataSource.updateHardMusicPoints(0)).called(1);
    });
  });

  group('nature', () {
    test('should call updateEasyNaturePoints() method', () async {
      when(() => firstDataSource.updateEasyNaturePoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyNaturePoints(0);

      verify(() => firstDataSource.updateEasyNaturePoints(0)).called(1);
    });

    test('should call updateMediumNaturePoints() method', () async {
      when(() => firstDataSource.updateMediumNaturePoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumNaturePoints(0);

      verify(() => firstDataSource.updateMediumNaturePoints(0)).called(1);
    });

    test('should call updateHardNaturePoints() method', () async {
      when(() => firstDataSource.updateHardNaturePoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardNaturePoints(0);

      verify(() => firstDataSource.updateHardNaturePoints(0)).called(1);
    });
  });

  group('sport', () {
    test('should call updateEasySportPoints() method', () async {
      when(() => firstDataSource.updateEasySportPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasySportPoints(0);

      verify(() => firstDataSource.updateEasySportPoints(0)).called(1);
    });

    test('should call updateMediumSportPoints() method', () async {
      when(() => firstDataSource.updateMediumSportPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumSportPoints(0);

      verify(() => firstDataSource.updateMediumSportPoints(0)).called(1);
    });

    test('should call updateHardSportPoints() method', () async {
      when(() => firstDataSource.updateHardSportPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardSportPoints(0);

      verify(() => firstDataSource.updateHardSportPoints(0)).called(1);
    });
  });

  group('tv', () {
    test('should call updateEasyTVPoints() method', () async {
      when(() => firstDataSource.updateEasyTvPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyTVPoints(0);

      verify(() => firstDataSource.updateEasyTvPoints(0)).called(1);
    });

    test('should call updateMediumTVPoints() method', () async {
      when(() => firstDataSource.updateMediumTvPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumTVPoints(0);

      verify(() => firstDataSource.updateMediumTvPoints(0)).called(1);
    });

    test('should call updateHardTVPoints() method', () async {
      when(() => firstDataSource.updateHardTvPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardTVPoints(0);

      verify(() => firstDataSource.updateHardTvPoints(0)).called(1);
    });
  });

  group('general', () {
    test('should call updateEasyGeneralPoints() method', () async {
      when(() => firstDataSource.updateEasyGeneralPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyGeneralPoints(0);

      verify(() => firstDataSource.updateEasyGeneralPoints(0)).called(1);
    });

    test('should call updateMediumGeneralPoints() method', () async {
      when(() => firstDataSource.updateMediumGeneralPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumGeneralPoints(0);

      verify(() => firstDataSource.updateMediumGeneralPoints(0)).called(1);
    });

    test('should call updateHardGeneralPoints() method', () async {
      when(() => firstDataSource.updateHardGeneralPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardGeneralPoints(0);

      verify(() => firstDataSource.updateHardGeneralPoints(0)).called(1);
    });
  });
}
