import 'package:bloc/bloc.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';

part 'films_state.dart';

class FilmsCubit extends Cubit<FilmsState> {
  FilmsCubit(this.quizRepository, this.userRepository) : super(FilmsState());

  final QuizRepository quizRepository;
  final UserRepository userRepository;

  Future<void> getEasyFilmsCategory() async {
    emit(FilmsState(
      status: Status.loading,
    ));
    try {
      final filmsModel = await quizRepository.getEasyFilmsData();

      emit(FilmsState(
        status: Status.success,
        filmsQuizModel: filmsModel,
      ));
    } catch (error) {
      emit(FilmsState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getMediumFilmsCategory() async {
    emit(FilmsState(
      status: Status.loading,
    ));
    try {
      final filmsModel = await quizRepository.getMediumFilmsData();

      emit(FilmsState(
        status: Status.success,
        filmsQuizModel: filmsModel,
      ));
    } catch (error) {
      emit(FilmsState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getHardFilmsCategory() async {
    emit(FilmsState(
      status: Status.loading,
    ));
    try {
      final filmsModel = await quizRepository.getHardFilmsData();

      emit(FilmsState(
        status: Status.success,
        filmsQuizModel: filmsModel,
      ));
    } catch (error) {
      emit(FilmsState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> addTotalFilmsPoints(int totalFilmsPoints) async {
    try {
      await userRepository.addTotalFilmsPoints(totalFilmsPoints);

      emit(FilmsState(
        status: Status.success,
      ));
    } catch (error) {
      emit(FilmsState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> addEasyFilmsPoints(int easyFilmsPoints) async {
    try {
      await userRepository.addEasyFilmsPoints(easyFilmsPoints);

      emit(FilmsState(
        status: Status.success,
      ));
    } catch (error) {
      emit(FilmsState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
