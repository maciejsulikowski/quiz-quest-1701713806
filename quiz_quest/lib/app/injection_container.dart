import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_quest/app/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => 'https://opentdb.com';

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));
}

// void configureDependencies() {
//   //Bloc
//   getIt.registerFactory(() => HomeCubit(getIt()));
//   getIt.registerFactory(() => UserCubit(getIt()));
//   getIt.registerFactory(() => RootCubit(getIt()));
//   getIt.registerFactory(() => FilmsCubit(getIt(), getIt()));
//   getIt.registerFactory(() => GamesCubit(getIt(), getIt()));
//   getIt.registerFactory(() => GeneralCubit(getIt(), getIt()));
//   getIt.registerFactory(() => GeographyCubit(getIt(), getIt()));
//   getIt.registerFactory(() => HistoryCubit(getIt(), getIt()));
//   getIt.registerFactory(() => MusicCubit(getIt(), getIt()));
//   getIt.registerFactory(() => NatureCubit(getIt(), getIt()));
//   getIt.registerFactory(() => SportCubit(getIt(), getIt()));
//   getIt.registerFactory(() => TVCubit(getIt(), getIt()));

//   //Repositories
//   getIt.registerFactory(() => UserRepository(getIt()));
//   getIt.registerFactory(() => QuizRepository(getIt()));

//   //DataSource
//   getIt.registerFactory(() => UserDataSource());
//   getIt.registerFactory(() => QuizCategoriesRetrofitDataSource(Dio()));
// }
