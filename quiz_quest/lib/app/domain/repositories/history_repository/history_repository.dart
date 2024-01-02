import 'package:quiz_quest/app/data/data_sources/history_category/history_category_data_source.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';

class HistoryRepository {
  HistoryRepository(this.historyCategoryDataSource);

  final HistoryCategoryDataSource historyCategoryDataSource;

  Future<HistoryQuizModel?> getHistoryData() async {
    final json = await historyCategoryDataSource.getHistoryCategory();

    if (json == null) {
      return null;
    }

    return HistoryQuizModel.fromJson(json);
  }
}
