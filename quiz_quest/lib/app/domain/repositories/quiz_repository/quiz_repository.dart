import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';

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

  Future<FilmsQuizModel?> getMediumFilmsData() async {
    final json = await quizCategoriesDataSource.getMediumFilmCategory();

    if (json == null) {
      return null;
    }

    return FilmsQuizModel.fromJson(json);
  }

  Future<FilmsQuizModel?> getHardFilmsData() async {
    final json = await quizCategoriesDataSource.getHardFilmCategory();

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
    final json = await quizCategoriesDataSource.getEasyGamesCategory();

    if (json == null) {
      return null;
    }

    return GamesQuizModel.fromJson(json);
  }

  Future<MusicQuizModel?> getMusicData() async {
    final json = await quizCategoriesDataSource.getEasyMusicCategory();

    if (json == null) {
      return null;
    }

    return MusicQuizModel.fromJson(json);
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

  Future<NatureQuizModel?> getNatureData() async {
    final json = await quizCategoriesDataSource.getEasyNatureCategory();

    if (json == null) {
      return null;
    }

    return NatureQuizModel.fromJson(json);
  }

  Future<SportsQuizModel?> getEasySportsData() async {
    final json = await quizCategoriesDataSource.getEasySportCategory();

    if (json == null) {
      return null;
    }

    return SportsQuizModel.fromJson(json);
  }

  Future<TVQuizModel?> getTVData() async {
    final json = await quizCategoriesDataSource.getEasyTVCategory();

    if (json == null) {
      return null;
    }

    return TVQuizModel.fromJson(json);
  }
}
