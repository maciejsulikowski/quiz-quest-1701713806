import 'package:quiz_quest/app/data/data_sources/category_data_source.dart';
import 'package:quiz_quest/app/domain/models/categories_model.dart';

class CategoriesRepository {
  CategoriesRepository({required this.categoryDataSource});
  final CategoriesDataSource categoryDataSource;

  Future<CategoriesModel?> getCategoryModel() async {
    final json = categoryDataSource.getSportCategory();

    if (json == null) {
      return null;
    }


  }
}
