import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport_state.dart';
part 'sport_cubit.freezed.dart';


class SportCubit extends Cubit<SportState> {
  SportCubit(this.quizRepository, this.userRepository) : super(SportState());

  final QuizRepository quizRepository;
  final UserRepository userRepository;

  Future<void> getEasySportsCategory() async {
    emit(SportState(
      status: Status.loading,
    ));
    try {
      final sportsModel = await quizRepository.getEasySportData();

      emit(SportState(
        status: Status.success,
        sportsQuizModel: sportsModel,
      ));
    } catch (error) {
      emit(SportState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getMediumSportsCategory() async {
    emit(SportState(
      status: Status.loading,
    ));
    try {
      final sportsModel = await quizRepository.getMediumSportData();

      emit(SportState(
        status: Status.success,
        sportsQuizModel: sportsModel,
      ));
    } catch (error) {
      emit(SportState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getHardSportsCategory() async {
    emit(SportState(
      status: Status.loading,
    ));
    try {
      final sportsModel = await quizRepository.getHardSportData();

      emit(SportState(
        status: Status.success,
        sportsQuizModel: sportsModel,
      ));
    } catch (error) {
      emit(SportState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateEasySportsPoints(int easySportsPoints) async {
    try {
      await userRepository.updateEasySportPoints(easySportsPoints);

      emit(SportState(
        status: Status.success,
      ));
    } catch (error) {
      emit(SportState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateMediumSportsPoints(int mediumSportsPoints) async {
    try {
      await userRepository.updateMediumSportPoints(mediumSportsPoints);

      emit(SportState(
        status: Status.success,
      ));
    } catch (error) {
      emit(SportState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateHardSportsPoints(int hardSportsPoints) async {
    try {
      await userRepository.updateHardSportPoints(hardSportsPoints);

      emit(SportState(
        status: Status.success,
      ));
    } catch (error) {
      emit(SportState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
