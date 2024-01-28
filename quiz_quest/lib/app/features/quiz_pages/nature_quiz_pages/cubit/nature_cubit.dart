import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/politics_model/politics_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'nature_state.dart';

class NatureCubit extends Cubit<NatureState> {
  NatureCubit(this.quizRepository) : super(NatureState());

  final QuizRepository quizRepository;

  Future<void> getPoliticsCategory() async {
    emit(NatureState(
      status: Status.loading,
    ));

    try {
      final politicsModel = await quizRepository.getPoliticsData();
      emit(NatureState(
        status: Status.success,
        politicsQuizModel: politicsModel,
      ));
    } catch (error) {
      emit(NatureState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
