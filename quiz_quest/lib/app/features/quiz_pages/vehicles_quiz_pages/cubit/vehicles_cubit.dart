import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/vehicles_model/vehicles_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

part 'vehicles_state.dart';

class VehiclesCubit extends Cubit<VehiclesState> {
  VehiclesCubit(this.quizRepository) : super(VehiclesState());

  final QuizRepository quizRepository;

  Future<void> getVehiclesCategory() async {
    emit(VehiclesState(
      status: Status.loading,
    ));

    try {
      final vehiclesModel = await quizRepository.getVehiclesData();
      emit(VehiclesState(
        status: Status.success,
        vehiclesQuizModel: vehiclesModel,
      ));
    } catch (error) {
      emit(VehiclesState(
        status: Status.error,
        error: error.toString(),
      ));
    }
  }
}
