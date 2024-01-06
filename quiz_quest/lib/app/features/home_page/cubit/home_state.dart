part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.sportsModel,
    this.animalsModel,
    this.artModel,
    this.computerScienceModel,
    this.geographyModel,
    this.historyModel,
    this.politicsModel,
    this.vehiclesModel,
    this.status = Status.initial,
    this.errorMessage,
  });

  final SportsQuizModel? sportsModel;
  final AnimalsQuizModel? animalsModel;
  final ArtQuizModel? artModel;
  final ComputerScienceQuizModel? computerScienceModel;
  final GeographyQuizModel? geographyModel;
  final HistoryQuizModel? historyModel;
  final PoliticsQuizModel? politicsModel;
  final VehiclesQuizModel? vehiclesModel;
  final Status status;
  final String? errorMessage;
}
