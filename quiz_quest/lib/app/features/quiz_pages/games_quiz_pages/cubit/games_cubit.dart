import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/art_model/art_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'games_state.dart';

class GamesCubit extends Cubit<GamesState> {
  GamesCubit(this.quizRepository) : super(GamesState());

  final QuizRepository quizRepository;

  Future<void> getArtCategory() async {
    emit(GamesState(
      status: Status.loading,
    ));

    

    try {
      final artModel = await quizRepository.getArtData();
      emit(GamesState(
        status: Status.success,
        artQuizModel: artModel,
      ));
    } catch (error) {
      emit(GamesState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
