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
                  data['films_hard_points'],
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
}
