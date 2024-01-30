import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'sport_state.dart';

class SportCubit extends Cubit<SportState> {
  SportCubit(this.quizRepository) : super(SportState());

  final QuizRepository quizRepository;

  Future<void> getSportCategory() async {
    emit(SportState(
      status: Status.loading,
    ));

    try {
      final sportModel = await quizRepository.getEasySportsData();
      emit(SportState(
        status: Status.success,
        sportsQuizModel: sportModel,
      ));
    } catch (error) {
      emit(SportState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
