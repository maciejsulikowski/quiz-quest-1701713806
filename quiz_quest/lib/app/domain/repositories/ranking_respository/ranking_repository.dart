import 'package:injectable/injectable.dart';
import 'package:quiz_quest/app/data/data_sources/ranking_data_source/ranking_data_source.dart';
import 'package:quiz_quest/app/domain/models/ranking_model/ranking_model.dart';

@injectable
class RankingRepository {
  RankingRepository(this.rankingDataSource);

  final RankingDataSource rankingDataSource;

  Stream<List<RankingModel>> getRanking() {
    return rankingDataSource.getRankingData().map((dataList) {
      return dataList
          .map((data) => RankingModel(
              totalPoints: data['films_easy_points'] +
                  data['films_medium_points'] +
                  data['films_hard_points'] +
                  data['games_easy_points'] +
                  data['games_medium_points'] +
                  data['games_hard_points'] +
                  data['general_easy_points'] +
                  data['general_medium_points'] +
                  data['general_hard_points'] +
                  data['geography_easy_points'] +
                  data['geography_medium_points'] +
                  data['geography_hard_points'] +
                  data['music_easy_points'] +
                  data['music_medium_points'] +
                  data['music_hard_points'] +
                  data['history_easy_points'] +
                  data['history_medium_points'] +
                  data['history_hard_points'] +
                  data['nature_easy_points'] +
                  data['nature_medium_points'] +
                  data['nature_hard_points'] +
                  data['sport_easy_points'] +
                  data['sport_medium_points'] +
                  data['sport_hard_points'] +
                  data['tv_easy_points'] +
                  data['tv_medium_points'] +
                  data['tv_hard_points'],
              filmsEPoints: data['films_easy_points'],
              filmsMPoints: data['films_medium_points'],
              filmsHPoints: data['films_hard_points'],
              gamesEPoints: data['games_easy_points'],
              gamesMPoints: data['games_medium_points'],
              gamesHPoints: data['games_hard_points'],
              generalEPoints: data['general_easy_points'],
              generalMPoints: data['general_medium_points'],
              generalHPoints: data['general_hard_points'],
              geoEPoints: data['geography_easy_points'],
              geoMPoints: data['geography_medium_points'],
              geoHPoints: data['geography_hard_points'],
              musicEPoints: data['music_easy_points'],
              musicMPoints: data['music_medium_points'],
              musicHPoints: data['music_hard_points'],
              historyEPoints: data['history_easy_points'],
              historyMPoints: data['history_medium_points'],
              historyHPoints: data['history_hard_points'],
              natureEPoints: data['nature_easy_points'],
              natureMPoints: data['nature_medium_points'],
              natureHPoints: data['nature_hard_points'],
              sportEPoints: data['sport_easy_points'],
              sportMPoints: data['sport_medium_points'],
              sportHPoints: data['sport_hard_points'],
              tvEPoints: data['tv_easy_points'],
              tvMPoints: data['tv_medium_points'],
              tvHPoints: data['tv_hard_points'],
              userID: data['user_id'],
              userName: data['user_name']))
          .toList();
    });
  }

  Future<void> setEmptyRankingPoints() async {
    return rankingDataSource.setEmptyRankingPoints();
  }

  //games
  Future<void> updateEasyGamesRankingPoints(int easyGamesRankingPoints) async {
    return rankingDataSource
        .updateEasyGamesRankingPoints(easyGamesRankingPoints);
  }

  Future<void> updateMediumGamesRankingPoints(
      int mediumGamesRankingPoints) async {
    return rankingDataSource
        .updateMediumGamesRankingPoints(mediumGamesRankingPoints);
  }

  Future<void> updateHardGamesRankingPoints(int hardGamesRankingPoints) async {
    return rankingDataSource
        .updateHardGamesRankingPoints(hardGamesRankingPoints);
  }

//films

  Future<void> updateEasyFilmsRankingRankingPoints(
      int easyFilmsRankingPoints) async {
    return rankingDataSource
        .updateEasyFilmRankingPoints(easyFilmsRankingPoints);
  }

  Future<void> updateEasyFilmsRankingPoints(int easyFilmsRankingPoints) async {
    return rankingDataSource
        .updateEasyFilmRankingPoints(easyFilmsRankingPoints);
  }

  Future<void> updateMediumFilmsRankingPoints(
      int mediumFilmsRankingPoints) async {
    return rankingDataSource
        .updateMediumFilmRankingPoints(mediumFilmsRankingPoints);
  }

  Future<void> updateHardFilmsRankingPoints(int hardFilmsRankingPoints) async {
    return rankingDataSource
        .updateHardFilmRankingPoints(hardFilmsRankingPoints);
  }

  //geo
  Future<void> updateEasyGeographyRankingPoints(
      int easyGeographyRankingPoints) async {
    return rankingDataSource
        .updateEasyGeographyRankingPoints(easyGeographyRankingPoints);
  }

  Future<void> updateMediumGeographyRankingPoints(
      int mediumGeographyRankingPoints) async {
    return rankingDataSource
        .updateMediumGeographyRankingPoints(mediumGeographyRankingPoints);
  }

  Future<void> updateHardGeographyRankingPoints(
      int hardGeographyRankingPoints) async {
    return rankingDataSource
        .updateHardGeographyRankingPoints(hardGeographyRankingPoints);
  }

  //history
  Future<void> updateEasyHistoryRankingPoints(
      int easyHistoryRankingPoints) async {
    return rankingDataSource
        .updateEasyHistoryRankingPoints(easyHistoryRankingPoints);
  }

  Future<void> updateMediumHistoryRankingPoints(
      int mediumHistoryRankingPoints) async {
    return rankingDataSource
        .updateMediumHistoryRankingPoints(mediumHistoryRankingPoints);
  }

  Future<void> updateHardHistoryRankingPoints(
      int hardHistoryRankingPoints) async {
    return rankingDataSource
        .updateHardHistoryRankingPoints(hardHistoryRankingPoints);
  }

  //music
  Future<void> updateEasyMusicRankingPoints(int easyMusicRankingPoints) async {
    return rankingDataSource
        .updateEasyMusicRankingPoints(easyMusicRankingPoints);
  }

  Future<void> updateMediumMusicRankingPoints(
      int mediumMusicRankingPoints) async {
    return rankingDataSource
        .updateMediumMusicRankingPoints(mediumMusicRankingPoints);
  }

  Future<void> updateHardMusicRankingPoints(int hardMusicRankingPoints) async {
    return rankingDataSource
        .updateHardMusicRankingPoints(hardMusicRankingPoints);
  }

  //nature
  Future<void> updateEasyNatureRankingPoints(
      int easyNatureRankingPoints) async {
    return rankingDataSource
        .updateEasyNatureRankingPoints(easyNatureRankingPoints);
  }

  Future<void> updateMediumNatureRankingPoints(
      int mediumNatureRankingPoints) async {
    return rankingDataSource
        .updateMediumNatureRankingPoints(mediumNatureRankingPoints);
  }

  Future<void> updateHardNatureRankingPoints(
      int hardNatureRankingPoints) async {
    return rankingDataSource
        .updateHardNatureRankingPoints(hardNatureRankingPoints);
  }

  //sport
  Future<void> updateEasySportRankingPoints(int easySportRankingPoints) async {
    return rankingDataSource
        .updateEasySportRankingPoints(easySportRankingPoints);
  }

  Future<void> updateMediumSportRankingPoints(
      int mediumSportRankingPoints) async {
    return rankingDataSource
        .updateMediumSportRankingPoints(mediumSportRankingPoints);
  }

  Future<void> updateHardSportRankingPoints(int hardSportRankingPoints) async {
    return rankingDataSource
        .updateHardSportRankingPoints(hardSportRankingPoints);
  }

  //tv
  Future<void> updateEasyTVRankingPoints(int easyTVRankingPoints) async {
    return rankingDataSource.updateEasyTvRankingPoints(easyTVRankingPoints);
  }

  Future<void> updateMediumTVRankingPoints(int mediumTVRankingPoints) async {
    return rankingDataSource.updateMediumTvRankingPoints(mediumTVRankingPoints);
  }

  Future<void> updateHardTVRankingPoints(int hardTVRankingPoints) async {
    return rankingDataSource.updateHardTvRankingPoints(hardTVRankingPoints);
  }

  //general
  Future<void> updateEasyGeneralRankingPoints(
      int easyGeneralRankingPoints) async {
    return rankingDataSource
        .updateEasyGeneralRankingPoints(easyGeneralRankingPoints);
  }

  Future<void> updateMediumGeneralRankingPoints(
      int mediumGeneralRankingPoints) async {
    return rankingDataSource
        .updateMediumGeneralRankingPoints(mediumGeneralRankingPoints);
  }

  Future<void> updateHardGeneralRankingPoints(
      int hardGeneralRankingPoints) async {
    return rankingDataSource
        .updateHardGeneralRankingPoints(hardGeneralRankingPoints);
  }
}
