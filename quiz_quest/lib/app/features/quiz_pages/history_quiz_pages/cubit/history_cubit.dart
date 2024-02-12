import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';

part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit(this.quizRepository, this.userRepository) : super(HistoryState());

  final QuizRepository quizRepository;
  final UserRepository userRepository;

 Future<void> getEasyHistoryCategory() async {
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

  Future<void> getMediumHistoryCategory() async {
    emit(HistoryState(
      status: Status.loading,
    ));
    try {
      final historyModel = await quizRepository.getMediumHistoryData();

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

  Future<void> getHardHistoryCategory() async {
    emit(HistoryState(
      status: Status.loading,
    ));
    try {
      final historyModel = await quizRepository.getHardHistoryData();

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

  Future<void> updateEasyHistoryPoints(int easyHistoryPoints) async {
    try {
      await userRepository.updateEasyHistoryPoints(easyHistoryPoints);

      emit(HistoryState(
        status: Status.success,
      ));
    } catch (error) {
      emit(HistoryState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateMediumHistoryPoints(int mediumHistoryPoints) async {
    try {
      await userRepository.updateMediumHistoryPoints(mediumHistoryPoints);

      emit(HistoryState(
        status: Status.success,
      ));
    } catch (error) {
      emit(HistoryState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateHardHistoryPoints(int hardHistoryPoints) async {
    try {
      await userRepository.updateHardHistoryPoints(hardHistoryPoints);

      emit(HistoryState(
        status: Status.success,
      ));
    } catch (error) {
      emit(HistoryState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
