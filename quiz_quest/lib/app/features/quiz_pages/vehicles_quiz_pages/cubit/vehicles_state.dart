part of 'vehicles_cubit.dart';

class VehiclesState {
  VehiclesState({
    this.vehiclesQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final VehiclesQuizModel? vehiclesQuizModel;
}
