part of 'history_cubit.dart';

class HistoryState {
  HistoryState({
    this.historyQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final HistoryQuizModel? historyQuizModel;
}
