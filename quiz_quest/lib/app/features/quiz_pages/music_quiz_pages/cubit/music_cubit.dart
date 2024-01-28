import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'music_state.dart';

class MusicCubit extends Cubit<MusicState> {
  MusicCubit(this.quizRepository) : super(MusicState());

  final QuizRepository quizRepository;

  Future<void> getComputerCategory() async {
    emit(MusicState(
      status: Status.loading,
    ));

    try {
      final computerModel = await quizRepository.getComputerScienceData();
      emit(MusicState(
        status: Status.success,
        computerScienceQuizModel: computerModel,
      ));
    } catch (error) {
      emit(MusicState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
