import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/data/data_sources/ranking_data_source/ranking_data_source.dart';
import 'package:quiz_quest/app/domain/models/ranking_model/ranking_model.dart';
import 'package:quiz_quest/app/domain/repositories/ranking_respository/ranking_repository.dart';

class MockDataSource extends Mock implements RankingDataSource {}

void main() {
  late RankingRepository sut;
  late MockDataSource dataSource;

  setUp(() {
    dataSource = MockDataSource();
    sut = RankingRepository(dataSource);
  });

  group('getRanking', () {
    final streamController = StreamController<List<Map<String, dynamic>>>();
    final rankingData = [
      {
        'user_id': 'XXX',
        'user_name': 'Maciek',
        'films_easy_points': 0,
        'films_medium_points': 0,
        'films_hard_points': 0,
        'games_easy_points': 0,
        'games_medium_points': 0,
        'games_hard_points': 0,
        'general_easy_points': 0,
        'general_medium_points': 0,
        'general_hard_points': 0,
        'geography_easy_points': 0,
        'geography_medium_points': 0,
        'geography_hard_points': 0,
        'music_easy_points': 0,
        'music_medium_points': 0,
        'music_hard_points': 0,
        'history_easy_points': 0,
        'history_medium_points': 0,
        'history_hard_points': 0,
        'nature_easy_points': 0,
        'nature_medium_points': 0,
        'nature_hard_points': 0,
        'sport_easy_points': 0,
        'sport_medium_points': 0,
        'sport_hard_points': 0,
        'tv_easy_points': 0,
        'tv_medium_points': 0,
        'tv_hard_points': 0,
      }
    ];

    test('should call getRanking() method', () {
      when(() => dataSource.getRankingData())
          .thenAnswer((_) => streamController.stream);

      sut.getRanking();

      verify(() => dataSource.getRankingData()).called(1);
    });

    test('should return getRanking() method successful', () {
      when(() => dataSource.getRankingData())
          .thenAnswer((_) => streamController.stream);

      final results = sut.getRanking();

      expectLater(
          results,
          emits({
            RankingModel(
                userID: 'XXX',
                userName: 'Maciek',
                filmsEPoints: 0,
                filmsMPoints: 0,
                filmsHPoints: 0,
                gamesEPoints: 0,
                gamesMPoints: 0,
                gamesHPoints: 0,
                generalEPoints: 0,
                generalMPoints: 0,
                generalHPoints: 0,
                geoEPoints: 0,
                geoMPoints: 0,
                geoHPoints: 0,
                historyEPoints: 0,
                historyMPoints: 0,
                historyHPoints: 0,
                musicEPoints: 0,
                musicMPoints: 0,
                musicHPoints: 0,
                natureEPoints: 0,
                natureMPoints: 0,
                natureHPoints: 0,
                sportEPoints: 0,
                sportMPoints: 0,
                sportHPoints: 0,
                tvEPoints: 0,
                tvMPoints: 0,
                tvHPoints: 0,
                totalPoints: 0)
          }));

      streamController.add(rankingData);

      streamController.close();
    });
  });

  group('setEmptyRankingPoints', () {
    test('should call setEmptyRankingPoints() method', () async {
      when(() => dataSource.setEmptyRankingPoints())
          .thenAnswer((invocation) async => {});

      await sut.setEmptyRankingPoints();

      verify(() => dataSource.setEmptyRankingPoints()).called(1);
    });
  });

  group('games', () {
    test('should call updateEasyGamesRankingPoints() method', () async {
      when(() => dataSource.updateEasyGamesRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyGamesRankingPoints(0);

      verify(() => dataSource.updateEasyGamesRankingPoints(0)).called(1);
    });

     test('should call updateMediumGamesRankingPoints() method', () async {
      when(() => dataSource.updateMediumGamesRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumGamesRankingPoints(0);

      verify(() => dataSource.updateMediumGamesRankingPoints(0)).called(1);
    });

     test('should call updateHardGamesRankingPoints() method', () async {
      when(() => dataSource.updateHardGamesRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardGamesRankingPoints(0);

      verify(() => dataSource.updateHardGamesRankingPoints(0)).called(1);
    });
  });

  group('films', () {
    test('should call updateEasyFilmRankingPoints() method', () async {
      when(() => dataSource.updateEasyFilmRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyFilmsRankingPoints(0);

      verify(() => dataSource.updateEasyFilmRankingPoints(0)).called(1);
    });

    test('should call updateMediumFilmRankingPoints() method', () async {
      when(() => dataSource.updateMediumFilmRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumFilmsRankingPoints(0);

      verify(() => dataSource.updateMediumFilmRankingPoints(0)).called(1);
    });

    test('should call updateHardFilmRankingPoints() method', () async {
      when(() => dataSource.updateHardFilmRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardFilmsRankingPoints(0);

      verify(() => dataSource.updateHardFilmRankingPoints(0)).called(1);
    });
  });

  group('geography', () {
    test('should call updateEasyGeographyRankingPoints() method', () async {
      when(() => dataSource.updateEasyGeographyRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyGeographyRankingPoints(0);

      verify(() => dataSource.updateEasyGeographyRankingPoints(0)).called(1);
    });

    test('should call updateMediumGeographyRankingPoints() method', () async {
      when(() => dataSource.updateMediumGeographyRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumGeographyRankingPoints(0);

      verify(() => dataSource.updateMediumGeographyRankingPoints(0)).called(1);
    });

    test('should call updateHardGeographyRankingPoints() method', () async {
      when(() => dataSource.updateHardGeographyRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardGeographyRankingPoints(0);

      verify(() => dataSource.updateHardGeographyRankingPoints(0)).called(1);
    });
  });

  group('history', () {
    test('should call updateEasyHistoryRankingPoints() method', () async {
      when(() => dataSource.updateEasyHistoryRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyHistoryRankingPoints(0);

      verify(() => dataSource.updateEasyHistoryRankingPoints(0)).called(1);
    });

    test('should call updateMediumHistoryRankingPoints() method', () async {
      when(() => dataSource.updateMediumHistoryRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumHistoryRankingPoints(0);

      verify(() => dataSource.updateMediumHistoryRankingPoints(0)).called(1);
    });

    test('should call updateHardHistoryRankingPoints() method', () async {
      when(() => dataSource.updateHardHistoryRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardHistoryRankingPoints(0);

      verify(() => dataSource.updateHardHistoryRankingPoints(0)).called(1);
    });
  });

  group('music', () {
    test('should call updateEasyMusicRankingPoints() method', () async {
      when(() => dataSource.updateEasyMusicRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyMusicRankingPoints(0);

      verify(() => dataSource.updateEasyMusicRankingPoints(0)).called(1);
    });

    test('should call updateMediumMusicRankingPoints() method', () async {
      when(() => dataSource.updateMediumMusicRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumMusicRankingPoints(0);

      verify(() => dataSource.updateMediumMusicRankingPoints(0)).called(1);
    });

    test('should call updateHardMusicRankingPoints() method', () async {
      when(() => dataSource.updateHardMusicRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardMusicRankingPoints(0);

      verify(() => dataSource.updateHardMusicRankingPoints(0)).called(1);
    });
  });

  group('nature', () {
    test('should call updateEasyNatureRankingPoints() method', () async {
      when(() => dataSource.updateEasyNatureRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyNatureRankingPoints(0);

      verify(() => dataSource.updateEasyNatureRankingPoints(0)).called(1);
    });

    test('should call updateMediumNatureRankingPoints() method', () async {
      when(() => dataSource.updateMediumNatureRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumNatureRankingPoints(0);

      verify(() => dataSource.updateMediumNatureRankingPoints(0)).called(1);
    });

    test('should call updateHardNatureRankingPoints() method', () async {
      when(() => dataSource.updateHardNatureRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardNatureRankingPoints(0);

      verify(() => dataSource.updateHardNatureRankingPoints(0)).called(1);
    });
  });

  group('sport', () {
    test('should call updateEasySportRankingPoints() method', () async {
      when(() => dataSource.updateEasySportRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasySportRankingPoints(0);

      verify(() => dataSource.updateEasySportRankingPoints(0)).called(1);
    });

    test('should call updateMediumSportRankingPoints() method', () async {
      when(() => dataSource.updateMediumSportRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumSportRankingPoints(0);

      verify(() => dataSource.updateMediumSportRankingPoints(0)).called(1);
    });

    test('should call updateHardSportRankingPoints() method', () async {
      when(() => dataSource.updateHardSportRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardSportRankingPoints(0);

      verify(() => dataSource.updateHardSportRankingPoints(0)).called(1);
    });
  });

  group('tv', () {
    test('should call updateEasyTVRankingPoints() method', () async {
      when(() => dataSource.updateEasyTvRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyTVRankingPoints(0);

      verify(() => dataSource.updateEasyTvRankingPoints(0)).called(1);
    });

    test('should call updateMediumTVRankingPoints() method', () async {
      when(() => dataSource.updateMediumTvRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumTVRankingPoints(0);

      verify(() => dataSource.updateMediumTvRankingPoints(0)).called(1);
    });

    test('should call updateHardTVRankingPoints() method', () async {
      when(() => dataSource.updateHardTvRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardTVRankingPoints(0);

      verify(() => dataSource.updateHardTvRankingPoints(0)).called(1);
    });
  });

  group('general', () {
    test('should call updateEasyGeneralRankingPoints() method', () async {
      when(() => dataSource.updateEasyGeneralRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateEasyGeneralRankingPoints(0);

      verify(() => dataSource.updateEasyGeneralRankingPoints(0)).called(1);
    });

    test('should call updateMediumGeneralRankingPoints() method', () async {
      when(() => dataSource.updateMediumGeneralRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateMediumGeneralRankingPoints(0);

      verify(() => dataSource.updateMediumGeneralRankingPoints(0)).called(1);
    });

    test('should call updateHardGeneralRankingPoints() method', () async {
      when(() => dataSource.updateHardGeneralRankingPoints(0))
          .thenAnswer((invocation) async => {});

      await sut.updateHardGeneralRankingPoints(0);

      verify(() => dataSource.updateHardGeneralRankingPoints(0)).called(1);
    });
  });
}
