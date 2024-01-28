import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/politics_model/politics_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/vehicles_model/vehicles_quiz_model.dart';

class QuizRepository {
  QuizRepository(this.quizCategoriesDataSource);

  final QuizCategoriesDataSource quizCategoriesDataSource;

  Future<FilmsQuizModel?> getEasyFilmsData() async {
    final json = await quizCategoriesDataSource.getEasyFilmCategory();

    if (json == null) {
      return null;
    }

    return FilmsQuizModel.fromJson(json);
  }

  // Future<AnimalsQuizModel?> getFakeAnimal() async {
  //   final json = await quizCategoriesDataSource.fakeAnimal();

  //   if (json == null) {
  //     return null;
  //   }

  //   return AnimalsQuizModel.fromJson(json);
  // }

  Future<GamesQuizModel?> getGamesData() async {
    final json = await quizCategoriesDataSource.getArtCategory();

    if (json == null) {
      return null;
    }

    return GamesQuizModel.fromJson(json);
  }

  Future<ComputerScienceQuizModel?> getComputerScienceData() async {
    final json = await quizCategoriesDataSource.getComputerScienceCategory();

    if (json == null) {
      return null;
    }

    return ComputerScienceQuizModel.fromJson(json);
  }

  Future<GeographyQuizModel?> getEasyGeographyData() async {
    final json = await quizCategoriesDataSource.getEasyGeographyCategory();

    if (json == null) {
      return null;
    }

    return GeographyQuizModel.fromJson(json);
  }

  Future<HistoryQuizModel?> getEasyHistoryData() async {
    final json = await quizCategoriesDataSource.getEasyHistoryCategory();

    if (json == null) {
      return null;
    }

    return HistoryQuizModel.fromJson(json);
  }

  Future<PoliticsQuizModel?> getPoliticsData() async {
    final json = await quizCategoriesDataSource.getPoliticsCategory();

    if (json == null) {
      return null;
    }

    return PoliticsQuizModel.fromJson(json);
  }

  Future<SportsQuizModel?> getEasySportsData() async {
    final json = await quizCategoriesDataSource.getEasySportCategory();

    if (json == null) {
      return null;
    }

    return SportsQuizModel.fromJson(json);
  }

  Future<VehiclesQuizModel?> getVehiclesData() async {
    final json = await quizCategoriesDataSource.getVehiclesCategory();

    if (json == null) {
      return null;
    }

    return VehiclesQuizModel.fromJson(json);
  }
}
