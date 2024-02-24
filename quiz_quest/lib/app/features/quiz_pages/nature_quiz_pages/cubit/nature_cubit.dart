import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nature_state.dart';
part 'nature_cubit.freezed.dart';



@injectable
class NatureCubit extends Cubit<NatureState> {
  NatureCubit(this.quizRepository, this.userRepository) : super(NatureState());

  final QuizRepository quizRepository;
  final UserRepository userRepository;

Future<void> getEasyNatureCategory() async {
    emit(NatureState(
      status: Status.loading,
    ));
    try {
      final natureModel = await quizRepository.getEasyNatureData();

      emit(NatureState(
        status: Status.success,
        natureQuizModel: natureModel,
      ));
    } catch (error) {
      emit(NatureState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getMediumNatureCategory() async {
    emit(NatureState(
      status: Status.loading,
    ));
    try {
      final natureModel = await quizRepository.getMediumNatureData();

      emit(NatureState(
        status: Status.success,
        natureQuizModel: natureModel,
      ));
    } catch (error) {
      emit(NatureState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getHardNatureCategory() async {
    emit(NatureState(
      status: Status.loading,
    ));
    try {
      final natureModel = await quizRepository.getHardNatureData();

      emit(NatureState(
        status: Status.success,
        natureQuizModel: natureModel,
      ));
    } catch (error) {
      emit(NatureState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateEasyNaturePoints(int easyNaturePoints) async {
    try {
      await userRepository.updateEasyNaturePoints(easyNaturePoints);

      emit(NatureState(
        status: Status.success,
      ));
    } catch (error) {
      emit(NatureState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateMediumNaturePoints(int mediumNaturePoints) async {
    try {
      await userRepository.updateMediumNaturePoints(mediumNaturePoints);

      emit(NatureState(
        status: Status.success,
      ));
    } catch (error) {
      emit(NatureState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateHardNaturePoints(int hardNaturePoints) async {
    try {
      await userRepository.updateHardNaturePoints(hardNaturePoints);

      emit(NatureState(
        status: Status.success,
      ));
    } catch (error) {
      emit(NatureState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
