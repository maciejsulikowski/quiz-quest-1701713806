part of 'tv_cubit.dart';

// class TVState {
//   TVState({
//     this.tvQuizModel,
//     this.isLoading = false,
//     this.status = Status.initial,
//     this.error,
//   });

//   final bool isLoading;
//   final Status status;
//   final String? error;
//   final TVQuizModel? tvQuizModel;
// }
@freezed
class TVState with _$TVState {
  factory TVState({
    TVQuizModel? tvQuizModel,
    @Default(Status.initial) Status status,
    @Default(false) bool? isLoading,
    String? error,
  }) = _TVState;
}