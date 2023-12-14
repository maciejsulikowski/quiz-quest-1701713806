import 'package:dio/dio.dart';

class RandomCategoryDataSource {
  Future<Map<String, dynamic>?> getRandomCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&difficulty=easy&type=multiple');

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }
}
