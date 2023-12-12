import 'package:quiz_quest/app/data/data_sources/category_data_source.dart';
import 'package:quiz_quest/app/domain/models/quiz_model.dart';

class CategoriesRepository {
  CategoriesRepository({required this.categoryDataSource});
  final CategoriesDataSource categoryDataSource;

  Future<QuizModel?> getSportsModel() async {
    final json = await categoryDataSource.getSportCategory();

    if (json == null) {
      return null;
    }

    return QuizModel.fromJson(json);
  }
}
