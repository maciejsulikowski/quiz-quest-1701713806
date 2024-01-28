import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'nature_state.dart';

class NatureCubit extends Cubit<NatureState> {
  NatureCubit(this.quizRepository) : super(NatureState());

  final QuizRepository quizRepository;

  Future<void> getNatureCategory() async {
    emit(NatureState(
      status: Status.loading,
    ));

    try {
      final natureModel = await quizRepository.getNatureData();
      emit(NatureState(
        status: Status.success,
        natureQuizModel: natureModel,
      ));
    } catch (error) {
      emit(NatureState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
