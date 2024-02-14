import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/general_model/general_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';

class QuizRepository {
  QuizRepository(
     this.quizCategoriesRetrofitDataSource);

  // final QuizCategoriesRetrofitDataSource quizCategoriesRetrofitDataSource;
  final QuizCategoriesRetrofitDataSource quizCategoriesRetrofitDataSource;

//films

  Future<FilmsQuizModel?> getEasyFilmsData() async {
    return quizCategoriesRetrofitDataSource.getEasyFilmCategory();
  }

  Future<FilmsQuizModel?> getMediumFilmsData() async {
    return quizCategoriesRetrofitDataSource.getMediumFilmCategory();
  }

  Future<FilmsQuizModel?> getHardFilmsData() async {
    return quizCategoriesRetrofitDataSource.getHardFilmCategory();
  }

//games

  Future<GamesQuizModel?> getEasyGamesData() async {
   return quizCategoriesRetrofitDataSource.getEasyGamesCategory();

    // if (json == null) {
    //   return null;
    // }

    // return GamesQuizModel.fromJson(json);
  }

  Future<GamesQuizModel?> getMediumGamesData() async {
    return quizCategoriesRetrofitDataSource.getMediumGamesCategory();

    // if (json == null) {
    //   return null;
    // }

    // return GamesQuizModel.fromJson(json);
  }

  Future<GamesQuizModel?> getHardGamesData() async {
    return quizCategoriesRetrofitDataSource.getHardGamesCategory();

    // if (json == null) {
    //   return null;
    // }

    // return GamesQuizModel.fromJson(json);
  }

//geo

  Future<GeographyQuizModel?> getEasyGeographyData() async {
    return quizCategoriesRetrofitDataSource.getEasyGeographyCategory();

    // if (json == null) {
    //   return null;
    // }

    // return GeographyQuizModel.fromJson(json);
  }

  Future<GeographyQuizModel?> getMediumGeographyData() async {
    return quizCategoriesRetrofitDataSource.getMediumGeographyCategory();

    // if (json == null) {
    //   return null;
    // }

    // return GeographyQuizModel.fromJson(json);
  }

  Future<GeographyQuizModel?> getHardGeographyData() async {
    return quizCategoriesRetrofitDataSource.getHardGeographyCategory();

    // if (json == null) {
    //   return null;
    // }

    // return GeographyQuizModel.fromJson(json);
  }

  //history

  Future<HistoryQuizModel?> getEasyHistoryData() async {
    return quizCategoriesRetrofitDataSource.getEasyHistoryCategory();

    // if (json == null) {
    //   return null;
    // }

    // return HistoryQuizModel.fromJson(json);
  }

  Future<HistoryQuizModel?> getMediumHistoryData() async {
    return quizCategoriesRetrofitDataSource.getMediumHistoryCategory();

    // if (json == null) {
    //   return null;
    // }

    // return HistoryQuizModel.fromJson(json);
  }

  Future<HistoryQuizModel?> getHardHistoryData() async {
    return quizCategoriesRetrofitDataSource.getHardHistoryCategory();

    // if (json == null) {
    //   return null;
    // }

    // return HistoryQuizModel.fromJson(json);
  }

  //music

  Future<MusicQuizModel?> getEasyMusicData() async {
    return quizCategoriesRetrofitDataSource.getEasyMusicCategory();

    // if (json == null) {
    //   return null;
    // }

    // return MusicQuizModel.fromJson(json);
  }

  Future<MusicQuizModel?> getMediumMusicData() async {
    return quizCategoriesRetrofitDataSource.getMediumMusicCategory();

    // if (json == null) {
    //   return null;
    // }

    // return MusicQuizModel.fromJson(json);
  }

  Future<MusicQuizModel?> getHardMusicData() async {
    return quizCategoriesRetrofitDataSource.getHardMusicCategory();

    // if (json == null) {
    //   return null;
    // }

    // return MusicQuizModel.fromJson(json);
  }

  //nature

  Future<NatureQuizModel?> getEasyNatureData() async {
    return quizCategoriesRetrofitDataSource.getEasyNatureCategory();

    // if (json == null) {
    //   return null;
    // }

    // return NatureQuizModel.fromJson(json);
  }

  Future<NatureQuizModel?> getMediumNatureData() async {
    return quizCategoriesRetrofitDataSource.getMediumNatureCategory();

    // if (json == null) {
    //   return null;
    // }

    // return NatureQuizModel.fromJson(json);
  }

  Future<NatureQuizModel?> getHardNatureData() async {
    return quizCategoriesRetrofitDataSource.getHardNatureCategory();

    // if (json == null) {
    //   return null;
    // }

    // return NatureQuizModel.fromJson(json);
  }

  //sport
  Future<SportsQuizModel?> getEasySportData() async {
    return quizCategoriesRetrofitDataSource.getEasySportCategory();

    // if (json == null) {
    //   return null;
    // }

    // return SportsQuizModel.fromJson(json);
  }

  Future<SportsQuizModel?> getMediumSportData() async {
    return quizCategoriesRetrofitDataSource.getMediumSportCategory();

    // if (json == null) {
    //   return null;
    // }

    // return SportsQuizModel.fromJson(json);
  }

  Future<SportsQuizModel?> getHardSportData() async {
    return quizCategoriesRetrofitDataSource.getHardSportCategory();

    // if (json == null) {
    //   return null;
    // }

    // return SportsQuizModel.fromJson(json);
  }

  //tv
  Future<TVQuizModel?> getEasyTVData() async {
    return quizCategoriesRetrofitDataSource.getEasyTVCategory();

    // if (json == null) {
    //   return null;
    // }

    // return TVQuizModel.fromJson(json);
  }

  Future<TVQuizModel?> getMediumTVData() async {
    return quizCategoriesRetrofitDataSource.getMediumTVCategory();

    // if (json == null) {
    //   return null;
    // }

    // return TVQuizModel.fromJson(json);
  }

  Future<TVQuizModel?> getHardTVData() async {
    return quizCategoriesRetrofitDataSource.getHardTVCategory();

    // if (json == null) {
    //   return null;
    // }

    // return TVQuizModel.fromJson(json);
  }

  //genral
  Future<GeneralQuizModel?> getEasyGeneralData() async {
    return quizCategoriesRetrofitDataSource.getEasyGeneralCategory();

    // if (json == null) {
    //   return null;
    // }

    // return GeneralQuizModel.fromJson(json);
  }

  Future<GeneralQuizModel?> getMediumGeneralData() async {
    return quizCategoriesRetrofitDataSource.getMediumGeneralCategory();

    // if (json == null) {
    //   return null;
    // }

    // return GeneralQuizModel.fromJson(json);
  }

  Future<GeneralQuizModel?> getHardGeneralData() async {
    return quizCategoriesRetrofitDataSource.getHardGeneralCategory();

    // if (json == null) {
    //   return null;
    // }

    // return GeneralQuizModel.fromJson(json);
  }
}
