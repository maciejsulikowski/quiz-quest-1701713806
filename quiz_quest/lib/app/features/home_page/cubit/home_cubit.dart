import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/category_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.categoriesRepository) : super(HomeState());

  final CategoriesRepository categoriesRepository;

  Future<void> getSportsModel(String category) async {
    emit(HomeState(
      status: Status.loading,
    ));

    try {
      final sports = await categoriesRepository.getSportsData(category);
      final animal = await categoriesRepository.getAnimalsData();
      print(animal);
      emit(HomeState(
        sportsModel: sports,
        animalsModel: animal,
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
  // Future<void> getAnimalModel() async {
  //   emit(HomeState(
  //     status: Status.loading,
  //   ));
  //   final categories = await categoriesRepository.getAnimalsData();

  //   try {
  //     emit(HomeState(
  //       animalsModel: categories,
  //       status: Status.success,
  //     ));
  //   } catch (error) {
  //     emit(
  //       HomeState(
  //         status: Status.error,
  //         errorMessage: error.toString(),
  //       ),
  //     );
  //   }
  // }
}
