import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';

part 'geography_state.dart';

class GeographyCubit extends Cubit<GeographyState> {
  GeographyCubit(this.quizRepository, this.userRepository)
      : super(GeographyState());

  final QuizRepository quizRepository;
  final UserRepository userRepository;

  Future<void> getEasyGeographyCategory() async {
    emit(GeographyState(
      status: Status.loading,
    ));
    try {
      final geographyModel = await quizRepository.getEasyGeographyData();

      emit(GeographyState(
        status: Status.success,
        geographyQuizModel: geographyModel,
      ));
    } catch (error) {
      emit(GeographyState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getMediumGeographyCategory() async {
    emit(GeographyState(
      status: Status.loading,
    ));
    try {
      final geographyModel = await quizRepository.getMediumGeographyData();

      emit(GeographyState(
        status: Status.success,
        geographyQuizModel: geographyModel,
      ));
    } catch (error) {
      emit(GeographyState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getHardGeographyCategory() async {
    emit(GeographyState(
      status: Status.loading,
    ));
    try {
      final geographyModel = await quizRepository.getHardGeographyData();

      emit(GeographyState(
        status: Status.success,
        geographyQuizModel: geographyModel,
      ));
    } catch (error) {
      emit(GeographyState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateEasyGeographyPoints(int easyGeographyPoints) async {
    try {
      await userRepository.updateEasyGeographyPoints(easyGeographyPoints);

      emit(GeographyState(
        status: Status.success,
      ));
    } catch (error) {
      emit(GeographyState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateMediumGeographyPoints(int mediumGeographyPoints) async {
    try {
      await userRepository.updateMediumGeographyPoints(mediumGeographyPoints);

      emit(GeographyState(
        status: Status.success,
      ));
    } catch (error) {
      emit(GeographyState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateHardGeographyPoints(int hardGeographyPoints) async {
    try {
      await userRepository.updateHardGeographyPoints(hardGeographyPoints);

      emit(GeographyState(
        status: Status.success,
      ));
    } catch (error) {
      emit(GeographyState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
