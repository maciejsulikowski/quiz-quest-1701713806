part of 'history_cubit.dart';

// class HistoryState {
//   HistoryState({
//     this.historyQuizModel,
//     this.isLoading = false,
//     this.status = Status.initial,
//     this.error,
//   });

//   final bool isLoading;
//   final Status status;
//   final String? error;
//   final HistoryQuizModel? historyQuizModel;
// }

@freezed
class HistoryState with _$HistoryState {
  factory HistoryState({
    HistoryQuizModel? historyQuizModel,
    @Default(Status.initial) Status status,
    @Default(false) bool? isLoading,
    String? error,
  }) = _HistoryState;
}
