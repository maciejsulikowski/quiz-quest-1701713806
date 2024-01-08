import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'animals_state.dart';

class AnimalsCubit extends Cubit<AnimalsState> {
  AnimalsCubit(this.quizRepository) : super(AnimalsState());

  final QuizRepository quizRepository;

  Future<void> getAnimalsCategory() async {
    emit(AnimalsState(
      status: Status.loading,
    ));
    try {
      final animalsModel = await quizRepository.getAnimalsData();
      emit(AnimalsState(
        status: Status.success,
        animalsQuizModel: animalsModel,
      ));
    } catch (error) {
      emit(AnimalsState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
