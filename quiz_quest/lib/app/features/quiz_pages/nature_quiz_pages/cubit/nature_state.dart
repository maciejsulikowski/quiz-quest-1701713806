part of 'nature_cubit.dart';

// class NatureState {
//   NatureState({
//     this.natureQuizModel,
//     this.isLoading = false,
//     this.status = Status.initial,
//     this.error,
//   });

//   final bool isLoading;
//   final Status status;
//   final String? error;
//   final NatureQuizModel? natureQuizModel;
// }
@freezed
class NatureState with _$NatureState {
  factory NatureState({
    NatureQuizModel? natureQuizModel,
    @Default(Status.initial) Status status,
    @Default(false) bool? isLoading,
    String? error,
  }) = _NatureState;
}
