import 'package:dio/dio.dart';

class HistoryCategoryDataSource {
  Future<Map<String, dynamic>?> getHistoryCategory() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=23&difficulty=easy&type=multiple');

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }
}
