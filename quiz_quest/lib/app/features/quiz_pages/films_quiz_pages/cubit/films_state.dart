part of 'films_cubit.dart';

// class FilmsState {
//   FilmsState({
//     this.filmsQuizModel,
//     this.isLoading = false,
//     this.status = Status.initial,
//     this.error,
//   });

//   final bool isLoading;
//   final Status status;
//   final String? error;
//   final FilmsQuizModel? filmsQuizModel;
// }

@freezed
class FilmsState with _$FilmsState {
  factory FilmsState({
    FilmsQuizModel? filmsQuizModel,
    @Default(Status.initial) Status status,
    @Default(false) bool? isLoading,
    String? error,
  }) = _FilmsState;
}
