import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'geography_state.dart';

class GeographyCubit extends Cubit<GeographyState> {
  GeographyCubit(this.quizRepository) : super(GeographyState());

  final QuizRepository quizRepository;

  Future<void> getGeographyCategory() async {
    emit(GeographyState(
      status: Status.loading,
    ));

    final geographyModel = await quizRepository.getGeographyData();

    try {
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
}
