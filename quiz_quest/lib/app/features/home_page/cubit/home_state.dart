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
        'id': 1,
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
        'id': 2,
        'name': 'Games',
        'image': 'images/games.png',
        'total_category': 'total_games_points',
        'easy_category': 'games_easy_points',
        'medium_category': 'games_medium_points',
        'hard_category': 'games_hard_points',
        'page': FirstQuizPageGames(
          image: 'images/games.png',
          // easyCategory: 'games_easy_points',
          // mediumCategory: 'games_medium_points',
          // hardCategory: 'games_hard_points',
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
          easyCategory: 'geography_easy_points',
          mediumCategory: 'geography_medium_points',
          hardCategory: 'geography_hard_points',
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
          easyCategory: 'history_easy_points',
          mediumCategory: 'history_medium_points',
          hardCategory: 'history_hard_points',
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
          easyCategory: 'music_easy_points',
          mediumCategory: 'music_medium_points',
          hardCategory: 'music_hard_points',
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
          easyCategory: 'nature_easy_points',
          mediumCategory: 'nature_medium_points',
          hardCategory: 'nature_hard_points',
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
          image: 'images/nature.png',
          easyCategory: 'sport_easy_points',
          mediumCategory: 'sport_medium_points',
          hardCategory: 'sport_hard_points',
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
          easyCategory: 'tv_easy_points',
          mediumCategory: 'tv_medium_points',
          hardCategory: 'tv_hard_points',
        )
      },
    ],
    this.pointsModel,
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
  final PointsModel? pointsModel;
}
