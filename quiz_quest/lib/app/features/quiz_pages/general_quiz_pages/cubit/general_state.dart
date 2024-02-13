part of 'general_cubit.dart';

class GeneralState {
  GeneralState({
    this.generalQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final GeneralQuizModel? generalQuizModel;
}
