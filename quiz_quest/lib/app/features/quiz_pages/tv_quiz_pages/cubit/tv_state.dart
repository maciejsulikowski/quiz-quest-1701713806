part of 'tv_cubit.dart';

class TVState {
  TVState({
    this.tvQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final TVQuizModel? tvQuizModel;
}
