import 'package:dio/dio.dart';

class QuizCategoriesDataSource {
  Future<Map<String, dynamic>?> getAnimalsCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=27&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> fakeAnimal() async {
    final response = await Dio().get(
        'https://quizapi.io/api/v1/questions?apiKey=jvc9pciDMQMpfhJ1EGjnbOPp4BMbqDTLBJ9pDfNM&difficulty=easy',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getArtCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=25&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getComputerScienceCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=18&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getGeographyCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=22&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getHistoryCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=23&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getPoliticsCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=24&category=21&difficulty=easy&type=multiple',
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

  Future<Map<String, dynamic>?> getSportCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=21&difficulty=easy&type=multiple',
        options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }

  Future<Map<String, dynamic>?> getVehiclesCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=28&difficulty=easy&type=multiple',
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
