part of 'games_cubit.dart';


// class GamesState {
//   GamesState({
//     this.gamesQuizModel,
//     this.isLoading = false,
//     this.status = Status.initial,
//     this.error,
//   });

//   final bool isLoading;
//   final Status status;
//   final String? error;
//   final GamesQuizModel? gamesQuizModel;
// }


@freezed
class GamesState with _$GamesState {
  factory GamesState({
    GamesQuizModel? gamesQuizModel,
    @Default(Status.initial) Status status,
    @Default(false) bool? isLoading,
    String? error,
  }) = _GamesState;
}
