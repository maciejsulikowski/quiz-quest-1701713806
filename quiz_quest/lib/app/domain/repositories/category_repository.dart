import 'package:quiz_quest/app/data/data_sources/animals_category/animals_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/sport_category/sport_category_data_source.dart';
import 'package:quiz_quest/app/domain/models/sports_quiz_model.dart';

class CategoriesRepository {
  CategoriesRepository(
      this.animalsCategoryDataSource, this.sportCategoryDataSource);

  final SportCategoryDataSource sportCategoryDataSource;
  final AnimalsCategoryDataSource animalsCategoryDataSource;

  Future<SportsQuizModel?> getSportsData(String category) async {
    final json = await sportCategoryDataSource.getSportCategory(category);

    if (json == null) {
      return null;
    }

    return SportsQuizModel.fromJson(json);
  }

  Future<SportsQuizModel?> getAnimalsData() async {
    final json = await animalsCategoryDataSource.getAnimalsCategory();

    if (json == null) {
      return null;
    }

    return SportsQuizModel.fromJson(json);
  }
}
