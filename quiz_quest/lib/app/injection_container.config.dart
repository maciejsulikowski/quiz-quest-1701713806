// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:quiz_quest/app/cubit/root_cubit.dart' as _i9;
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart'
    as _i7;
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart'
    as _i3;
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart'
    as _i8;
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart'
    as _i4;
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart' as _i6;
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart'
    as _i13;
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/cubit/games_cubit.dart'
    as _i14;
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/cubit/general_cubit.dart'
    as _i15;
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/cubit/geography_cubit.dart'
    as _i16;
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/cubit/history_cubit.dart'
    as _i17;
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/cubit/music_cubit.dart'
    as _i18;
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/cubit/nature_cubit.dart'
    as _i19;
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/cubit/sport_cubit.dart'
    as _i10;
import 'package:quiz_quest/app/features/quiz_pages/tv_quiz_pages/cubit/tv_cubit.dart'
    as _i11;
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart'
    as _i12;
import 'package:quiz_quest/app/injection_container.dart' as _i20;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i3.UserDataSource>(() => _i3.UserDataSource());
    gh.factory<_i4.UserRepository>(
        () => _i4.UserRepository(gh<_i3.UserDataSource>()));
    gh.lazySingleton<_i5.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i6.HomeCubit>(() => _i6.HomeCubit(gh<_i4.UserRepository>()));
    gh.factory<_i7.QuizCategoriesRetrofitDataSource>(
        () => _i7.QuizCategoriesRetrofitDataSource(gh<_i5.Dio>()));
    gh.factory<_i8.QuizRepository>(
        () => _i8.QuizRepository(gh<_i7.QuizCategoriesRetrofitDataSource>()));
    gh.factory<_i9.RootCubit>(() => _i9.RootCubit(gh<_i4.UserRepository>()));
    gh.factory<_i10.SportCubit>(() => _i10.SportCubit(
          gh<_i8.QuizRepository>(),
          gh<_i4.UserRepository>(),
        ));
    gh.factory<_i11.TVCubit>(() => _i11.TVCubit(
          gh<_i8.QuizRepository>(),
          gh<_i4.UserRepository>(),
        ));
    gh.factory<_i12.UserCubit>(() => _i12.UserCubit(gh<_i4.UserRepository>()));
    gh.factory<_i13.FilmsCubit>(() => _i13.FilmsCubit(
          gh<_i8.QuizRepository>(),
          gh<_i4.UserRepository>(),
        ));
    gh.factory<_i14.GamesCubit>(() => _i14.GamesCubit(
          gh<_i8.QuizRepository>(),
          gh<_i4.UserRepository>(),
        ));
    gh.factory<_i15.GeneralCubit>(() => _i15.GeneralCubit(
          gh<_i8.QuizRepository>(),
          gh<_i4.UserRepository>(),
        ));
    gh.factory<_i16.GeographyCubit>(() => _i16.GeographyCubit(
          gh<_i8.QuizRepository>(),
          gh<_i4.UserRepository>(),
        ));
    gh.factory<_i17.HistoryCubit>(() => _i17.HistoryCubit(
          gh<_i8.QuizRepository>(),
          gh<_i4.UserRepository>(),
        ));
    gh.factory<_i18.MusicCubit>(() => _i18.MusicCubit(
          gh<_i8.QuizRepository>(),
          gh<_i4.UserRepository>(),
        ));
    gh.factory<_i19.NatureCubit>(() => _i19.NatureCubit(
          gh<_i8.QuizRepository>(),
          gh<_i4.UserRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i20.RegisterModule {}
