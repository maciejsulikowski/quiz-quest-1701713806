import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/politics_model/politics_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'politics_state.dart';

class PoliticsCubit extends Cubit<PoliticsState> {
  PoliticsCubit(this.quizRepository) : super(PoliticsState());

  final QuizRepository quizRepository;

  Future<void> getPoliticsCategory() async {
    emit(PoliticsState(
      status: Status.loading,
    ));

    final politicsModel = await quizRepository.getPoliticsData();

    try {
      emit(PoliticsState(
        status: Status.success,
        politicsQuizModel: politicsModel,
      ));
    } catch (error) {
      emit(PoliticsState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
