import 'package:dio/dio.dart';

class AnimalsCategoryDataSource {
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
}
