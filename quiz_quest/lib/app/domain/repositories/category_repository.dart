import 'package:quiz_quest/app/data/data_sources/animals_category/animals_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/art_category/art_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/computer_science_category/computer_science_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/sport_category/sport_category_data_source.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/art_model/art_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';

class CategoriesRepository {
  CategoriesRepository(this.animalsCategoryDataSource,
      this.sportCategoryDataSource, this.artCategoryDataSource, this.computerScienceCategoryDataSource);

  final SportCategoryDataSource sportCategoryDataSource;
  final AnimalsCategoryDataSource animalsCategoryDataSource;
  final ArtCategoryDataSource artCategoryDataSource;
  final ComputerScienceCategoryDataSource computerScienceCategoryDataSource;

  Future<SportsQuizModel?> getSportsData(String category) async {
    final json = await sportCategoryDataSource.getSportCategory(category);

    if (json == null) {
      return null;
    }

    return SportsQuizModel.fromJson(json);
  }

  Future<AnimalsQuizModel?> getAnimalsData() async {
    final json = await animalsCategoryDataSource.getAnimalsCategory();

    if (json == null) {
      return null;
    }

    return AnimalsQuizModel.fromJson(json);
  }

  Future<ArtQuizModel?> getArtData() async {
    final json = await artCategoryDataSource.getArtCategory();

    if (json == null) {
      return null;
    }

    return ArtQuizModel.fromJson(json);
  }

  Future<ComputerScienceQuizModel?> getComputerScienceData() async {
    final json = await computerScienceCategoryDataSource.getComputerScienceCategory();

    if (json == null) {
      return null;
    }

    return ComputerScienceQuizModel.fromJson(json);
  }
}
