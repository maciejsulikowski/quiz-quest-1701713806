import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'games_state.dart';
part 'games_cubit.freezed.dart';

class GamesCubit extends Cubit<GamesState> {
  GamesCubit(this.quizRepository, this.userRepository) : super(GamesState());

  final QuizRepository quizRepository;
  final UserRepository userRepository;

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

  Future<void> getMediumGamesCategory() async {
    emit(GamesState(
      status: Status.loading,
    ));
    try {
      final gamesModel = await quizRepository.getMediumGamesData();

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

  Future<void> getHardGamesCategory() async {
    emit(GamesState(
      status: Status.loading,
    ));
    try {
      final gamesModel = await quizRepository.getHardGamesData();

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

  Future<void> updateEasyGamesPoints(int easyGamesPoints) async {
    try {
      await userRepository.updateEasyGamesPoints(easyGamesPoints);

      emit(GamesState(
        status: Status.success,
      ));
    } catch (error) {
      emit(GamesState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateMediumGamesPoints(int mediumGamesPoints) async {
    try {
      await userRepository.updateMediumGamesPoints(mediumGamesPoints);

      emit(GamesState(
        status: Status.success,
      ));
    } catch (error) {
      emit(GamesState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateHardGamesPoints(int hardGamesPoints) async {
    try {
      await userRepository.updateHardGamesPoints(hardGamesPoints);

      emit(GamesState(
        status: Status.success,
      ));
    } catch (error) {
      emit(GamesState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
