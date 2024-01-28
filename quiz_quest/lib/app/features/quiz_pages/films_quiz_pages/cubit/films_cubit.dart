import 'package:bloc/bloc.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'films_state.dart';

class FilmsCubit extends Cubit<FilmsState> {
  FilmsCubit(this.quizRepository) : super(FilmsState());

  final QuizRepository quizRepository;
  int currentIndex = 0;
  String question = '';
  List<dynamic> list = [];
  String correctAnswer = '';
  bool isButtonBlocked = true;
  AnimalsQuizModel? animalsQuizModel;

  Future<void> getAnimalsCategory() async {
    emit(FilmsState(
      status: Status.loading,
    ));
    try {
      final animalsModel = await quizRepository.getAnimalsData();

      emit(FilmsState(
        status: Status.success,
        animalsQuizModel: animalsModel,
      ));
    } catch (error) {
      emit(FilmsState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
