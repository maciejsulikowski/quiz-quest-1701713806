import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/general_model/general_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';

part 'general_cubit.freezed.dart';
part 'general_state.dart';


@injectable
class GeneralCubit extends Cubit<GeneralState> {
  GeneralCubit(this.quizRepository, this.userRepository)
      : super(GeneralState());

  final UserRepository userRepository;
  final QuizRepository quizRepository;

  Future<void> getEasyGeneralCategory() async {
    emit(GeneralState(
      status: Status.loading,
    ));
    try {
      final generalModel = await quizRepository.getEasyGeneralData();

      emit(GeneralState(
        status: Status.success,
        generalQuizModel: generalModel,
      ));
    } catch (error) {
      emit(GeneralState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getMediumGeneralCategory() async {
    emit(GeneralState(
      status: Status.loading,
    ));
    try {
      final generalModel = await quizRepository.getMediumGeneralData();

      emit(GeneralState(
        status: Status.success,
        generalQuizModel: generalModel,
      ));
    } catch (error) {
      emit(GeneralState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getHardGeneralCategory() async {
    emit(GeneralState(
      status: Status.loading,
    ));
    try {
      final generalModel = await quizRepository.getHardGeneralData();

      emit(GeneralState(
        status: Status.success,
        generalQuizModel: generalModel,
      ));
    } catch (error) {
      emit(GeneralState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateEasyGeneralPoints(int easyGeneralPoints) async {
    try {
      await userRepository.updateEasyGeneralPoints(easyGeneralPoints);

      emit(GeneralState(
        status: Status.success,
      ));
    } catch (error) {
      emit(GeneralState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateMediumGeneralPoints(int mediumGeneralPoints) async {
    try {
      await userRepository.updateMediumGeneralPoints(mediumGeneralPoints);

      emit(GeneralState(
        status: Status.success,
      ));
    } catch (error) {
      emit(GeneralState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateHardGeneralPoints(int hardGeneralPoints) async {
    try {
      await userRepository.updateHardGeneralPoints(hardGeneralPoints);

      emit(GeneralState(
        status: Status.success,
      ));
    } catch (error) {
      emit(GeneralState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
