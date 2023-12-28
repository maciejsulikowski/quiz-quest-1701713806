part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.sportsModel,
    this.animalsModel,
    this.artModel,
    this.status = Status.initial,
    this.errorMessage,
  });

  final SportsQuizModel? sportsModel;
  final AnimalsQuizModel? animalsModel;
  final ArtQuizModel? artModel;
  final Status status;
  final String? errorMessage;
}
