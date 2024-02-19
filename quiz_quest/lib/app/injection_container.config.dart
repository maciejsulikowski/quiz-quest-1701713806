// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:quiz_quest/app/cubit/root_cubit.dart' as _i12;
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart'
    as _i9;
import 'package:quiz_quest/app/data/data_sources/ranking_data_source/ranking_data_source.dart'
    as _i3;
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart'
    as _i5;
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart'
    as _i10;
import 'package:quiz_quest/app/domain/repositories/ranking_respository/ranking_repository.dart'
    as _i4;
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart'
    as _i6;
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart' as _i8;
import 'package:quiz_quest/app/features/home_page/ranking_widget/cubit/ranking_cubit.dart'
    as _i11;
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart'
    as _i16;
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/cubit/games_cubit.dart'
    as _i17;
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/cubit/general_cubit.dart'
    as _i18;
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/cubit/geography_cubit.dart'
    as _i19;
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/cubit/history_cubit.dart'
    as _i20;
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/cubit/music_cubit.dart'
    as _i21;
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/cubit/nature_cubit.dart'
    as _i22;
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/cubit/sport_cubit.dart'
    as _i13;
import 'package:quiz_quest/app/features/quiz_pages/tv_quiz_pages/cubit/tv_cubit.dart'
    as _i14;
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart'
    as _i15;
import 'package:quiz_quest/app/injection_container.dart' as _i23;

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
    gh.factory<_i3.RankingDataSource>(() => _i3.RankingDataSource());
    gh.factory<_i4.RankingRepository>(
        () => _i4.RankingRepository(gh<_i3.RankingDataSource>()));
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i5.UserDataSource>(() => _i5.UserDataSource());
    gh.factory<_i6.UserRepository>(
        () => _i6.UserRepository(gh<_i5.UserDataSource>()));
    gh.lazySingleton<_i7.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i8.HomeCubit>(() => _i8.HomeCubit(gh<_i6.UserRepository>()));
    gh.factory<_i9.QuizCategoriesRetrofitDataSource>(
        () => _i9.QuizCategoriesRetrofitDataSource(gh<_i7.Dio>()));
    gh.factory<_i10.QuizRepository>(
        () => _i10.QuizRepository(gh<_i9.QuizCategoriesRetrofitDataSource>()));
    gh.factory<_i11.RankingCubit>(
        () => _i11.RankingCubit(gh<_i4.RankingRepository>()));
    gh.factory<_i12.RootCubit>(() => _i12.RootCubit(
          gh<_i6.UserRepository>(),
          gh<_i4.RankingRepository>(),
        ));
    gh.factory<_i13.SportCubit>(() => _i13.SportCubit(
          gh<_i10.QuizRepository>(),
          gh<_i6.UserRepository>(),
        ));
    gh.factory<_i14.TVCubit>(() => _i14.TVCubit(
          gh<_i10.QuizRepository>(),
          gh<_i6.UserRepository>(),
        ));
    gh.factory<_i15.UserCubit>(() => _i15.UserCubit(gh<_i6.UserRepository>()));
    gh.factory<_i16.FilmsCubit>(() => _i16.FilmsCubit(
          gh<_i10.QuizRepository>(),
          gh<_i6.UserRepository>(),
        ));
    gh.factory<_i17.GamesCubit>(() => _i17.GamesCubit(
          gh<_i10.QuizRepository>(),
          gh<_i6.UserRepository>(),
        ));
    gh.factory<_i18.GeneralCubit>(() => _i18.GeneralCubit(
          gh<_i10.QuizRepository>(),
          gh<_i6.UserRepository>(),
        ));
    gh.factory<_i19.GeographyCubit>(() => _i19.GeographyCubit(
          gh<_i10.QuizRepository>(),
          gh<_i6.UserRepository>(),
        ));
    gh.factory<_i20.HistoryCubit>(() => _i20.HistoryCubit(
          gh<_i10.QuizRepository>(),
          gh<_i6.UserRepository>(),
        ));
    gh.factory<_i21.MusicCubit>(() => _i21.MusicCubit(
          gh<_i10.QuizRepository>(),
          gh<_i6.UserRepository>(),
        ));
    gh.factory<_i22.NatureCubit>(() => _i22.NatureCubit(
          gh<_i10.QuizRepository>(),
          gh<_i6.UserRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i23.RegisterModule {}
