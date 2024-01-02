import 'package:quiz_quest/app/data/data_sources/animals_category/animals_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/art_category/art_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/computer_science_category/computer_science_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/sport_category/sport_category_data_source.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/art_model/art_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';

class ArtRepository {
  ArtRepository(
    this.artCategoryDataSource,
  );

  final ArtCategoryDataSource artCategoryDataSource;

  Future<ArtQuizModel?> getArtData() async {
    final json = await artCategoryDataSource.getArtCategory();

    if (json == null) {
      return null;
    }

    return ArtQuizModel.fromJson(json);
  }
}
