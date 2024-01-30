import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'music_state.dart';

class MusicCubit extends Cubit<MusicState> {
  MusicCubit(this.quizRepository) : super(MusicState());

  final QuizRepository quizRepository;

  Future<void> getMusicCategory() async {
    emit(MusicState(
      status: Status.loading,
    ));

    try {
      final musicModel = await quizRepository.getMusicData();
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
}
