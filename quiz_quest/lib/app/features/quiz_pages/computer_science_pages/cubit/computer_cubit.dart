import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'computer_state.dart';

class ComputerScienceCubit extends Cubit<ComputerScienceState> {
  ComputerScienceCubit(this.quizRepository) : super(ComputerScienceState());

  final QuizRepository quizRepository;

  Future<void> getComputerCategory() async {
    emit(ComputerScienceState(
      status: Status.loading,
    ));

    try {
      final computerModel = await quizRepository.getComputerScienceData();
      emit(ComputerScienceState(
        status: Status.success,
        computerScienceQuizModel: computerModel,
      ));
    } catch (error) {
      emit(ComputerScienceState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
