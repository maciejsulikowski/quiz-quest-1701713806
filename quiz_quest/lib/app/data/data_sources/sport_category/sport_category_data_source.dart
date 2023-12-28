import 'package:dio/dio.dart';

class SportCategoryDataSource {
  Future<Map<String, dynamic>?> getSportCategory(String category) async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=$category&difficulty=easy&type=multiple',
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
