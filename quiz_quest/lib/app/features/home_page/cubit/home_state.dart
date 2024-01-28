part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.sportsModel,
    this.filmsModel,
    this.gamesModel,
    this.musicModel,
    this.geographyModel,
    this.historyModel,
    this.natureModel,
    this.vehiclesModel,
    this.status = Status.initial,
    this.errorMessage,
    this.searchedList = const [
    ],
    this.list = const [],
  });

  final SportsQuizModel? sportsModel;
  final FilmsQuizModel? filmsModel;
  final GamesQuizModel? gamesModel;
  final MusicQuizModel? musicModel;
  final GeographyQuizModel? geographyModel;
  final HistoryQuizModel? historyModel;
  final NatureQuizModel? natureModel;
  final VehiclesQuizModel? vehiclesModel;
  final Status status;
  final String? errorMessage;
  final List searchedList;
  final List list;
}
