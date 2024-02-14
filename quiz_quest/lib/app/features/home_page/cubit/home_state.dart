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
    this.tvModel,
    this.status = Status.initial,
    this.errorMessage,
    this.searchedList = const [],
    this.list = const [
      {
        'id': 0,
        'name': 'Films',
        'image': 'images/movie.png',
        'total_category': 'total_films_points',
        'easy_category': 'films_easy_points',
        'medium_category': 'films_medium_points',
        'hard_category': 'films_hard_points',
        'page': FirstQuizPageFilms(
          image: 'images/movie.png',
        )
      },
      {
        'id': 1,
        'name': 'Games',
        'image': 'images/games.png',
        'total_category': 'total_games_points',
        'easy_category': 'games_easy_points',
        'medium_category': 'games_medium_points',
        'hard_category': 'games_hard_points',
        'page': FirstQuizPageGames(
          image: 'images/games.png',
        )
      },
      {
        'id': 2,
        'name': 'General',
        'image': 'images/book.png',
        'total_category': 'total_general_points',
        'easy_category': 'general_easy_points',
        'medium_category': 'general_medium_points',
        'hard_category': 'general_hard_points',
        'page': FirstQuizPageGeneral(
          image: 'images/book.png',
        )
      },
      {
        'id': 3,
        'name': 'Geography',
        'image': 'images/geography.png',
        'total_category': 'total_geography_points',
        'easy_category': 'geography_easy_points',
        'medium_category': 'geography_medium_points',
        'hard_category': 'geography_hard_points',
        'page': FirstQuizPageGeography(
          image: 'images/geography.png',
        )
      },
      {
        'id': 4,
        'name': 'History',
        'image': 'images/history.png',
        'total_category': 'total_history_points',
        'easy_category': 'history_easy_points',
        'medium_category': 'history_medium_points',
        'hard_category': 'history_hard_points',
        'page': FirstQuizPageHistory(
          image: 'images/history.png',
        )
      },
      {
        'id': 5,
        'name': 'Music',
        'image': 'images/music.png',
        'total_category': 'total_music_points',
        'easy_category': 'music_easy_points',
        'medium_category': 'music_medium_points',
        'hard_category': 'music_hard_points',
        'page': FirstQuizPageMusic(
          image: 'images/music.png',
        )
      },
      {
        'id': 6,
        'name': 'Nature',
        'image': 'images/nature.png',
        'total_category': 'total_nature_points',
        'easy_category': 'nature_easy_points',
        'medium_category': 'nature_medium_points',
        'hard_category': 'nature_hard_points',
        'page': FirstQuizPageNature(
          image: 'images/nature.png',
        )
      },
      {
        'id': 7,
        'name': 'Sport',
        'image': 'images/ball.png',
        'total_category': 'total_sports_points',
        'easy_category': 'sport_easy_points',
        'medium_category': 'sport_medium_points',
        'hard_category': 'sport_hard_points',
        'page': FirstQuizPageSport(
          image: 'images/ball.png',
        )
      },
      {
        'id': 8,
        'name': 'TV',
        'image': 'images/tv.png',
        'total_category': 'total_tv_points',
        'easy_category': 'tv_easy_points',
        'medium_category': 'tv_medium_points',
        'hard_category': 'tv_hard_points',
        'page': FirstQuizPageTV(
          image: 'images/tv.png',
        )
      },
    ],
    this.categoryPoints = const [],
    this.totalPoints = 0,
    this.totalCategoryPoints = 0,
    this.isSaved = false,
  });

  final SportsQuizModel? sportsModel;
  final FilmsQuizModel? filmsModel;
  final GamesQuizModel? gamesModel;
  final MusicQuizModel? musicModel;
  final GeographyQuizModel? geographyModel;
  final HistoryQuizModel? historyModel;
  final NatureQuizModel? natureModel;
  final TVQuizModel? tvModel;
  final Status status;
  final String? errorMessage;
  final List searchedList;
  final List list;
  final List<Map<String, int>> categoryPoints;
  final int totalPoints;
  final int totalCategoryPoints;
  final bool isSaved;
}
