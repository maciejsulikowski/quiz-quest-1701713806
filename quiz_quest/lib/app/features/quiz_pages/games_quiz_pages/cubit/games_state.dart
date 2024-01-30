part of 'games_cubit.dart';


class GamesState {
  GamesState({
    this.gamesQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final GamesQuizModel? gamesQuizModel;
}
