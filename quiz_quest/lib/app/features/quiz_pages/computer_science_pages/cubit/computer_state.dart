part of 'computer_cubit.dart';

class ComputerScienceState {
  ComputerScienceState({
    this.computerScienceQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final ComputerScienceQuizModel? computerScienceQuizModel;
}
