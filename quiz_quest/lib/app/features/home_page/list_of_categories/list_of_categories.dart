import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/first_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/first_quiz_page_games.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/first_quiz_page_general.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/first_quiz_page_geography.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/first_quiz_page_history.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/first_quiz_page_music.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/first_quiz_page_nature.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/first_quiz_page_sport.dart';
import 'package:quiz_quest/app/features/quiz_pages/tv_quiz_pages/first_quiz_page_tv.dart';


List<dynamic> list = [
  {
    'id': 0,
    'name': 'Films',
    'image': 'images/movie.png',
    'total_category': 'total_films_points',
    'easy_category': 'films_easy_points',
    'medium_category': 'films_medium_points',
    'hard_category': 'films_hard_points',
    'page': const FirstQuizPageFilms(
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
    'page': const FirstQuizPageGames(
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
    'page': const FirstQuizPageGeneral(
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
    'page': const FirstQuizPageGeography(
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
    'page': const FirstQuizPageHistory(
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
    'page': const FirstQuizPageMusic(
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
    'page': const FirstQuizPageNature(
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
    'page': const FirstQuizPageSport(
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
    'page': const FirstQuizPageTV(
      image: 'images/tv.png',
    )
  },
];
