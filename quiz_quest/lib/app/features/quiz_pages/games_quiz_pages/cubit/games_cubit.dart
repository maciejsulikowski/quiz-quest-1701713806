import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'games_state.dart';

class GamesCubit extends Cubit<GamesState> {
  GamesCubit(this.quizRepository) : super(GamesState());

  final QuizRepository quizRepository;

  Future<void> getEasyGamesCategory() async {
    emit(GamesState(
      status: Status.loading,
    ));

    try {
      final gamesModel = await quizRepository.getEasyGamesData();
      emit(GamesState(
        status: Status.success,
        gamesQuizModel: gamesModel,
      ));
    } catch (error) {
      emit(GamesState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
