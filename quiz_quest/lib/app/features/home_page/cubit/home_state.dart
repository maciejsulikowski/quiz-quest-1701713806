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
    this.searchedList = const [
      {'name': 'Animals', 'image': 'images/animal.png'},
      {'name': 'Art', 'image': 'images/art.png'},
      {'name': 'Computer Science', 'image': 'images/computer.png'},
      {'name': 'Geography', 'image': 'images/geography.png'},
      {'name': 'History', 'image': 'images/history.png'},
      {'name': 'Politics', 'image': 'images/politics.png'},
      {'name': 'Sport', 'image': 'images/ball.png'},
      {'name': 'Vehicles', 'image': 'images/vehicle.png'},
    ],
    this.list = const [],
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
  final List searchedList;
  final List list;
}
