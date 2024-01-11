import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/art_model/art_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'art_state.dart';

class ArtCubit extends Cubit<ArtState> {
  ArtCubit(this.quizRepository) : super(ArtState());

  final QuizRepository quizRepository;

  Future<void> getArtCategory() async {
    emit(ArtState(
      status: Status.loading,
    ));

    

    try {
      final artModel = await quizRepository.getArtData();
      emit(ArtState(
        status: Status.success,
        artQuizModel: artModel,
      ));
    } catch (error) {
      emit(ArtState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
