part of 'politics_cubit.dart';

class PoliticsState {
  PoliticsState({
    this.politicsQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final PoliticsQuizModel? politicsQuizModel;
}
