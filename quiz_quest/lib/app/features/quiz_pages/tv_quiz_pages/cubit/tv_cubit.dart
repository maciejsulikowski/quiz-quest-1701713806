import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'tv_state.dart';

class TVCubit extends Cubit<TVState> {
  TVCubit(this.quizRepository) : super(TVState());

  final QuizRepository quizRepository;

  Future<void> getTVcategory() async {
    emit(TVState(
      status: Status.loading,
    ));

    try {
      final tvModel = await quizRepository.getTVData();
      emit(TVState(
        status: Status.success,
        tvQuizModel: tvModel,
      ));
    } catch (error) {
      emit(TVState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
