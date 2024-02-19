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
              points: data['points'],
              userID: data['user_id'],
              userName: data['user_name']))
          .toList();
    });
  }

  Future<void> setEmptyRankingPoints() async {
    return rankingDataSource.setEmptyRankingPoints();
  }
}
