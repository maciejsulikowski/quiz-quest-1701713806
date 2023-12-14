import 'package:dio/dio.dart';

class ArtCategoryDataSource {
  Future<Map<String, dynamic>?> getArtCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=25&difficulty=easy&type=multiple');

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }
}
