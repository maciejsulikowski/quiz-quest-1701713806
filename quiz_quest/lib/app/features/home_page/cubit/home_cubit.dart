import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/achievement_repository/achievement_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/first_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/first_quiz_page_games.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/first_quiz_page_general.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/first_quiz_page_geography.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/first_quiz_page_history.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/first_quiz_page_music.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/first_quiz_page_nature.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/first_quiz_page_sport.dart';
import 'package:quiz_quest/app/features/quiz_pages/tv_quiz_pages/first_quiz_page_tv.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.userRepository, this.achievementRepository)
      : super(const HomeState());

  final AchievementRepository achievementRepository;
  final UserRepository userRepository;
  StreamSubscription? streamSubscription;

  Future<void> getPointsData() async {
    emit(const HomeState(
      status: Status.loading,
    ));

    streamSubscription = userRepository.getPoints().listen((points) {
      int totalPoints = 0;
      for (var element in points) {
        totalPoints += element['total']!;
      }

      emit(HomeState(
        categoryPoints: points,
        totalPoints: totalPoints,
        status: Status.success,
      ));
    })
      ..onError((error) {
        emit(
          HomeState(
            status: Status.error,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  Future<void> changeFirstAchievement() async {
    try {
      await achievementRepository.changeFirstAchievement();
      emit(
        const HomeState(
          status: Status.success,
          isSaved: true,
        ),
      );
      getPointsData();
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> changeSecondAchievement() async {
    try {
      await achievementRepository.changeSecondAchievement();
      emit(
        const HomeState(
          status: Status.success,
          isSaved: true,
        ),
      );
      getPointsData();
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> changeThirdAchievement() async {
    try {
      await achievementRepository.changeThirdAchievement();
      emit(
        const HomeState(
          status: Status.success,
          isSaved: true,
        ),
      );
      getPointsData();
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> changeFourthAchievement() async {
    try {
      await achievementRepository.changeFourthAchievement();
      emit(
        const HomeState(
          status: Status.success,
          isSaved: true,
        ),
      );
      getPointsData();
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> changeFifthAchievement() async {
    try {
      await achievementRepository.changeFifthAchievement();
      emit(
        const HomeState(
          status: Status.success,
          isSaved: true,
        ),
      );
      getPointsData();
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> changeSixthAchievement() async {
    try {
      await achievementRepository.changeSixthAchievement();
      emit(
        const HomeState(
          status: Status.success,
          isSaved: true,
        ),
      );
      getPointsData();
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
