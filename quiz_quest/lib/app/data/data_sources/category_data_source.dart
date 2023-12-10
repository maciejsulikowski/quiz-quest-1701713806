import 'package:dio/dio.dart';

class CategoriesDataSource {
  
  Future<Map<String, dynamic>?> categoryData() async {
    final response = await Dio().get(
        'https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple');

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }
    
    return responseData;
  }

  Future<Map<String, dynamic>?> getSportCategory() async {
    final response = await Dio().get('https://opentdb.com/api.php?amount=10&category=21&difficulty=easy&type=multiple');

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    return responseData;
  }
}
