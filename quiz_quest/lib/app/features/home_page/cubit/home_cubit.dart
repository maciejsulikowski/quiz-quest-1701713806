import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/categories_model.dart';
import 'package:quiz_quest/app/domain/repositories/category_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._categoriesRepository) : super(HomeState());

  final CategoriesRepository _categoriesRepository;

  Future<void> getCategoryModel() async {
    emit(HomeState(
      status: Status.loading,
    ));
    final categories = await _categoriesRepository.getSportsModel();
    try {
      emit(HomeState(
        cateogriesModel: categories,
        status: Status.success,
      ));
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
