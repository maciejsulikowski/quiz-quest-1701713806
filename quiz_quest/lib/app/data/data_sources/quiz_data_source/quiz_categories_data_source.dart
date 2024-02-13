import 'package:dio/dio.dart';

class QuizCategoriesDataSource {
  Future<Map<String, dynamic>?> getEasyFilmCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=11&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getMediumFilmCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=11&difficulty=medium&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getHardFilmCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=40&category=11&difficulty=hard&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getEasyMusicCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=12&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getMediumMusicCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=12&difficulty=medium&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getHardMusicCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=12&difficulty=hard&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getEasyGamesCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=5&category=15&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getMediumGamesCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=15&difficulty=medium&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getHardGamesCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=15&difficulty=hard&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getEasyNatureCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=17&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getMediumNatureCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=17&difficulty=medium&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getHardNatureCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=17&difficulty=hard&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getEasyGeographyCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=22&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getMediumGeographyCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=22&difficulty=medium&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getHardGeographyCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=22&difficulty=hard&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getEasyHistoryCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=23&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getMediumHistoryCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=23&difficulty=medium&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getHardHistoryCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=50&category=23&difficulty=hard&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getRandomCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getEasySportCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=5&category=21&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getMediumSportCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=5&category=21&difficulty=medium&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getHardSportCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=5&category=21&difficulty=hard&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getEasyTVCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=5&category=14&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getMediumTVCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=5&category=14&difficulty=medium&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getHardTVCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=5&category=14&difficulty=hard&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getEasyGeneralCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getMediumGeneralCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=9&difficulty=medium&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getHardGeneralCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=9&difficulty=hard&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }
}
