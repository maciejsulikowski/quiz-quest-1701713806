import 'package:quiz_quest/app/data/data_sources/animals_category/animals_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/art_category/art_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/computer_science_category/computer_science_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/sport_category/sport_category_data_source.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/art_model/art_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';

class AnimalsRepository {
  AnimalsRepository(
    this.animalsCategoryDataSource,
  );

  final AnimalsCategoryDataSource animalsCategoryDataSource;

  Future<AnimalsQuizModel?> getAnimalsData() async {
    final json = await animalsCategoryDataSource.getAnimalsCategory();

    if (json == null) {
      return null;
    }

    return AnimalsQuizModel.fromJson(json);
  }
}
