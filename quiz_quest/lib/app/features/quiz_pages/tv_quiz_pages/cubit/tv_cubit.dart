import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_state.dart';
part 'tv_cubit.freezed.dart';



@injectable
class TVCubit extends Cubit<TVState> {
  TVCubit(this.quizRepository, this.userRepository) : super(TVState());

  final QuizRepository quizRepository;
  final UserRepository userRepository;

  Future<void> getEasyTVCategory() async {
    emit(TVState(
      status: Status.loading,
    ));
    try {
      final tvModel = await quizRepository.getEasyTVData();

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

  Future<void> getMediumTVCategory() async {
    emit(TVState(
      status: Status.loading,
    ));
    try {
      final tvModel = await quizRepository.getMediumTVData();

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

  Future<void> getHardTVCategory() async {
    emit(TVState(
      status: Status.loading,
    ));
    try {
      final tvModel = await quizRepository.getHardTVData();

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

  Future<void> updateEasyTVPoints(int easyTVPoints) async {
    try {
      await userRepository.updateEasyTVPoints(easyTVPoints);

      emit(TVState(
        status: Status.success,
      ));
    } catch (error) {
      emit(TVState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateMediumTVPoints(int mediumTVPoints) async {
    try {
      await userRepository.updateMediumTVPoints(mediumTVPoints);

      emit(TVState(
        status: Status.success,
      ));
    } catch (error) {
      emit(TVState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateHardTVPoints(int hardTVPoints) async {
    try {
      await userRepository.updateHardTVPoints(hardTVPoints);

      emit(TVState(
        status: Status.success,
      ));
    } catch (error) {
      emit(TVState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
