import 'package:quiz_quest/app/data/data_sources/history_category/history_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/politics_category/politics_category_data_source.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/politics_model/politics_quiz_model.dart';

class PoliticsRepository {
  PoliticsRepository(this.politicsCategoryDataSource);

  final PoliticsCategoryDataSource politicsCategoryDataSource;

  Future<PoliticsQuizModel?> getHistoryData() async {
    final json = await politicsCategoryDataSource.getPoliticsCategory();

    if (json == null) {
      return null;
    }

    return PoliticsQuizModel.fromJson(json);
  }
}
