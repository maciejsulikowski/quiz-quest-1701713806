import 'package:quiz_quest/app/data/data_sources/sport_category/sport_category_data_source.dart';
import 'package:quiz_quest/app/domain/models/quiz_model.dart';

class CategoriesRepository {

  
  CategoriesRepository({required this.sportCategoryDataSource});

  final SportCategoryDataSource sportCategoryDataSource;


  Future<QuizModel?> getSportsModel() async {
    final json = await sportCategoryDataSource.getSportCategory();

    if (json == null) {
      return null;
    }

    return QuizModel.fromJson(json);
  }
}
