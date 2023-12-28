import 'package:dio/dio.dart';

class PoliticsCategoryDataSource {
  Future<Map<String, dynamic>?> getPoliticsCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=24&category=21&difficulty=easy&type=multiple', options: Options(
          validateStatus: (_) => true,
        ));

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }
}
