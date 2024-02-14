import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_state.dart';
part 'music_cubit.freezed.dart';


class MusicCubit extends Cubit<MusicState> {
  MusicCubit(this.quizRepository, this.userRepository) : super(MusicState());

  final QuizRepository quizRepository;
  final UserRepository userRepository;

  Future<void> getEasyMusicCategory() async {
    emit(MusicState(
      status: Status.loading,
    ));
    try {
      final musicModel = await quizRepository.getEasyMusicData();

      emit(MusicState(
        status: Status.success,
        musicQuizModel: musicModel,
      ));
    } catch (error) {
      emit(MusicState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getMediumMusicCategory() async {
    emit(MusicState(
      status: Status.loading,
    ));
    try {
      final musicModel = await quizRepository.getMediumMusicData();

      emit(MusicState(
        status: Status.success,
        musicQuizModel: musicModel,
      ));
    } catch (error) {
      emit(MusicState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> getHardMusicCategory() async {
    emit(MusicState(
      status: Status.loading,
    ));
    try {
      final musicModel = await quizRepository.getHardMusicData();

      emit(MusicState(
        status: Status.success,
        musicQuizModel: musicModel,
      ));
    } catch (error) {
      emit(MusicState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateEasyMusicPoints(int easyMusicPoints) async {
    try {
      await userRepository.updateEasyMusicPoints(easyMusicPoints);

      emit(MusicState(
        status: Status.success,
      ));
    } catch (error) {
      emit(MusicState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateMediumMusicPoints(int mediumMusicPoints) async {
    try {
      await userRepository.updateMediumMusicPoints(mediumMusicPoints);

      emit(MusicState(
        status: Status.success,
      ));
    } catch (error) {
      emit(MusicState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }

  Future<void> updateHardMusicPoints(int hardMusicPoints) async {
    try {
      await userRepository.updateHardMusicPoints(hardMusicPoints);

      emit(MusicState(
        status: Status.success,
      ));
    } catch (error) {
      emit(MusicState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
