part of 'sport_cubit.dart';

class SportState {
  SportState({
    this.sportsQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error, 
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final SportsQuizModel? sportsQuizModel;
}
