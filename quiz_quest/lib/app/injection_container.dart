import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_quest/app/cubit/root_cubit.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/cubit/games_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/cubit/general_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/cubit/geography_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/cubit/history_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/cubit/music_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/cubit/nature_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/cubit/sport_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/tv_quiz_pages/cubit/tv_cubit.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';

final getIt = GetIt.instance;

// @InjectableInit()
// void configureDependencies() => getIt.init();

void configureDependencies() {
  //Bloc
  getIt.registerFactory(() => HomeCubit(getIt()));
  getIt.registerFactory(() => UserCubit(getIt()));
  getIt.registerFactory(() => RootCubit(getIt()));
  getIt.registerFactory(() => FilmsCubit(getIt(), getIt()));
  getIt.registerFactory(() => GamesCubit(getIt(), getIt()));
  getIt.registerFactory(() => GeneralCubit(getIt(), getIt()));
  getIt.registerFactory(() => GeographyCubit(getIt(), getIt()));
  getIt.registerFactory(() => HistoryCubit(getIt(), getIt()));
  getIt.registerFactory(() => MusicCubit(getIt(), getIt()));
  getIt.registerFactory(() => NatureCubit(getIt(), getIt()));
  getIt.registerFactory(() => SportCubit(getIt(), getIt()));
  getIt.registerFactory(() => TVCubit(getIt(), getIt()));

  //Repositories
  getIt.registerFactory(() => UserRepository(getIt()));
  getIt.registerFactory(() => QuizRepository(getIt()));

  //DataSource
  getIt.registerFactory(() => UserDataSource());
  getIt.registerFactory(() => QuizCategoriesRetrofitDataSource(Dio()));
}
