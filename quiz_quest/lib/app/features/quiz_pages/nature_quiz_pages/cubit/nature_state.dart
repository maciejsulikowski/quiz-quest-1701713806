part of 'nature_cubit.dart';

class NatureState {
  NatureState({
    this.natureQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final NatureQuizModel? natureQuizModel;
}
