import 'package:dio/dio.dart';

class GeographyCategoryDataSource {
  Future<Map<String, dynamic>?> getGeographyCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=21&difficulty=easy&type=multiple');

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }
}
