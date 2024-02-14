import 'package:dio/dio.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/general_model/general_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';
import 'package:retrofit/retrofit.dart';
part 'quiz_categories_data_source.g.dart';

@RestApi(baseUrl: 'https://opentdb.com')
abstract class QuizCategoriesRetrofitDataSource {
  factory QuizCategoriesRetrofitDataSource(Dio dio, {String baseUrl}) =
      _QuizCategoriesRetrofitDataSource;

  @GET('/api.php?amount=10&category=11&difficulty=easy&type=multiple')
  Future<FilmsQuizModel> getEasyFilmCategory();
  @GET('/api.php?amount=10&category=11&difficulty=medium&type=multiple')
  Future<FilmsQuizModel> getMediumFilmCategory();
  @GET('/api.php?amount=10&category=11&difficulty=hard&type=multiple')
  Future<FilmsQuizModel> getHardFilmCategory();
  @GET('/api.php?amount=10&category=15&difficulty=easy&type=multiple')
  Future<GamesQuizModel> getEasyGamesCategory();
  @GET('/api.php?amount=10&category=15&difficulty=medium&type=multiple')
  Future<GamesQuizModel> getMediumGamesCategory();
  @GET('/api.php?amount=10&category=15&difficulty=hard&type=multiple')
  Future<GamesQuizModel> getHardGamesCategory();
  @GET('/api.php?amount=10&category=12&difficulty=easy&type=multiple')
  Future<MusicQuizModel> getEasyMusicCategory();
  @GET('/api.php?amount=10&category=12&difficulty=medium&type=multiple')
  Future<MusicQuizModel> getMediumMusicCategory();
  @GET('/api.php?amount=10&category=12&difficulty=hard&type=multiple')
  Future<MusicQuizModel> getHardMusicCategory();
  @GET('/api.php?amount=10&category=17&difficulty=easy&type=multiple')
  Future<NatureQuizModel> getEasyNatureCategory();
  @GET('/api.php?amount=10&category=17&difficulty=medium&type=multiple')
  Future<NatureQuizModel> getMediumNatureCategory();
  @GET('/api.php?amount=10&category=17&difficulty=hard&type=multiple')
  Future<NatureQuizModel> getHardNatureCategory();
  @GET('/api.php?amount=10&category=22&difficulty=easy&type=multiple')
  Future<GeographyQuizModel> getEasyGeographyCategory();
  @GET('/api.php?amount=10&category=22&difficulty=medium&type=multiple')
  Future<GeographyQuizModel> getMediumGeographyCategory();
  @GET('/api.php?amount=10&category=22&difficulty=hard&type=multiple')
  Future<GeographyQuizModel> getHardGeographyCategory();
  @GET('/api.php?amount=10&category=23&difficulty=easy&type=multiple')
  Future<HistoryQuizModel> getEasyHistoryCategory();
  @GET('/api.php?amount=10&category=23&difficulty=medium&type=multiple')
  Future<HistoryQuizModel> getMediumHistoryCategory();
  @GET('/api.php?amount=10&category=23&difficulty=hard&type=multiple')
  Future<HistoryQuizModel> getHardHistoryCategory();
   @GET('/api.php?amount=10&category=21&difficulty=easy&type=multiple')
  Future<SportsQuizModel> getEasySportCategory();
  @GET('/api.php?amount=10&category=21&difficulty=medium&type=multiple')
  Future<SportsQuizModel> getMediumSportCategory();
  @GET('/api.php?amount=10&category=21&difficulty=hard&type=multiple')
  Future<SportsQuizModel> getHardSportCategory();
  @GET('/api.php?amount=10&category=14&difficulty=easy&type=multiple')
  Future<TVQuizModel> getEasyTVCategory();
  @GET('/api.php?amount=10&category=14&difficulty=medium&type=multiple')
  Future<TVQuizModel> getMediumTVCategory();
  @GET('/api.php?amount=10&category=14&difficulty=hard&type=multiple')
  Future<TVQuizModel> getHardTVCategory();
  @GET('/api.php?amount=10&category=9&difficulty=easy&type=multiple')
  Future<GeneralQuizModel> getEasyGeneralCategory();
  @GET('/api.php?amount=10&category=9&difficulty=medium&type=multiple')
  Future<GeneralQuizModel> getMediumGeneralCategory();
  @GET('/api.php?amount=10&category=9&difficulty=hard&type=multiple')
  Future<GeneralQuizModel> getHardGeneralCategory();

}

// class QuizCategoriesDataSource {
  // Future<Map<String, dynamic>?> getEasyFilmCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=10&category=11&difficulty=easy&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getMediumFilmCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=11&difficulty=medium&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getHardFilmCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=40&category=11&difficulty=hard&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getEasyMusicCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=12&difficulty=easy&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getMediumMusicCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=12&difficulty=medium&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getHardMusicCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=12&difficulty=hard&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getEasyGamesCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=5&category=15&difficulty=easy&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getMediumGamesCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=15&difficulty=medium&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getHardGamesCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=15&difficulty=hard&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getEasyNatureCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=17&difficulty=easy&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getMediumNatureCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=17&difficulty=medium&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getHardNatureCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=17&difficulty=hard&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getEasyGeographyCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=22&difficulty=easy&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getMediumGeographyCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=22&difficulty=medium&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getHardGeographyCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=22&difficulty=hard&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getEasyHistoryCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=23&difficulty=easy&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getMediumHistoryCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=23&difficulty=medium&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getHardHistoryCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=50&category=23&difficulty=hard&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }


  // Future<Map<String, dynamic>?> getEasySportCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=5&category=21&difficulty=easy&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getMediumSportCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=5&category=21&difficulty=medium&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

  // Future<Map<String, dynamic>?> getHardSportCategory() async {
  //   final response = await Dio().get(
  //       'https://opentdb.com/api.php?amount=5&category=21&difficulty=hard&type=multiple',
  //       options: Options(
  //         validateStatus: (_) => true,
  //       ));

  //   final responseData = response.data;

  //   if (responseData == null) {
  //     return null;
  //   }

  //   return responseData;
  // }

//   Future<Map<String, dynamic>?> getEasyTVCategory() async {
//     final response = await Dio().get(
//         'https://opentdb.com/api.php?amount=5&category=14&difficulty=easy&type=multiple',
//         options: Options(
//           validateStatus: (_) => true,
//         ));

//     final responseData = response.data;

//     if (responseData == null) {
//       return null;
//     }

//     return responseData;
//   }

//   Future<Map<String, dynamic>?> getMediumTVCategory() async {
//     final response = await Dio().get(
//         'https://opentdb.com/api.php?amount=5&category=14&difficulty=medium&type=multiple',
//         options: Options(
//           validateStatus: (_) => true,
//         ));

//     final responseData = response.data;

//     if (responseData == null) {
//       return null;
//     }

//     return responseData;
//   }

//   Future<Map<String, dynamic>?> getHardTVCategory() async {
//     final response = await Dio().get(
//         'https://opentdb.com/api.php?amount=5&category=14&difficulty=hard&type=multiple',
//         options: Options(
//           validateStatus: (_) => true,
//         ));

//     final responseData = response.data;

//     if (responseData == null) {
//       return null;
//     }

//     return responseData;
//   }

//   Future<Map<String, dynamic>?> getEasyGeneralCategory() async {
//     final response = await Dio().get(
//         'https://opentdb.com/api.php?amount=5&category=9&difficulty=easy&type=multiple',
//         options: Options(
//           validateStatus: (_) => true,
//         ));

//     final responseData = response.data;

//     if (responseData == null) {
//       return null;
//     }

//     return responseData;
//   }

//   Future<Map<String, dynamic>?> getMediumGeneralCategory() async {
//     final response = await Dio().get(
//         'https://opentdb.com/api.php?amount=5&category=9&difficulty=medium&type=multiple',
//         options: Options(
//           validateStatus: (_) => true,
//         ));

//     final responseData = response.data;

//     if (responseData == null) {
//       return null;
//     }

//     return responseData;
//   }

//   Future<Map<String, dynamic>?> getHardGeneralCategory() async {
//     final response = await Dio().get(
//         'https://opentdb.com/api.php?amount=5&category=9&difficulty=hard&type=multiple',
//         options: Options(
//           validateStatus: (_) => true,
//         ));

//     final responseData = response.data;

//     if (responseData == null) {
//       return null;
//     }

//     return responseData;
//   }
// }
