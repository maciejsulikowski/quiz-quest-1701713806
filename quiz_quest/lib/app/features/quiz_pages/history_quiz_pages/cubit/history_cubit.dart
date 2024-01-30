import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit(this.quizRepository) : super(HistoryState());

  final QuizRepository quizRepository;

  Future<void> getHistoryCategory() async {
    emit(HistoryState(
      status: Status.loading,
    ));

    try {
      final historyModel = await quizRepository.getEasyHistoryData();
      emit(HistoryState(
        status: Status.success,
        historyQuizModel: historyModel,
      ));
    } catch (error) {
      emit(HistoryState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
