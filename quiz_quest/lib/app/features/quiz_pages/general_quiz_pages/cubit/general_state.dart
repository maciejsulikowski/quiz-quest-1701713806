part of 'general_cubit.dart';

// class GeneralState {
//   GeneralState({
//     this.generalQuizModel,
//     this.isLoading = false,
//     this.status = Status.initial,
//     this.error,
//   });

//   final bool isLoading;
//   final Status status;
//   final String? error;
//   final GeneralQuizModel? generalQuizModel;
// }

@freezed
class GeneralState with _$GeneralState {
  factory GeneralState({
    GeneralQuizModel? generalQuizModel,
    @Default(Status.initial) Status status,
    @Default(false) bool? isLoading,
    String? error,
  }) = _GeneralState;
}
