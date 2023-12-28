import 'package:dio/dio.dart';

class VehiclesCategoryDataSource {
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