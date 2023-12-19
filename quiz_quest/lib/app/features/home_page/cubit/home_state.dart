part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.sportsModel,
    this.animalsModel,
    this.status = Status.initial,
    this.errorMessage,
  });

  final SportsQuizModel? sportsModel;
  final AnimalsQuizModel? animalsModel;
  final Status status;
  final String? errorMessage;
}
