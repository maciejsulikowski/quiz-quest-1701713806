import 'package:bloc/bloc.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
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
  FilmsQuizModel? filmsQuizModel;

  Future<void> getFilmsCategory() async {
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
}
