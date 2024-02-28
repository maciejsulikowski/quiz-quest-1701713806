import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/achievements_model/achievements_model.dart';
import 'package:quiz_quest/app/domain/repositories/achievement_repository/achievement_repository.dart';

part 'achievements_state.dart';

@injectable
class AchievementsCubit extends Cubit<AchievementsState> {
  AchievementsCubit(this.achievementRepository) : super(AchievementsState());

  final AchievementRepository achievementRepository;
  StreamSubscription? streamSubscription;

  Future<void> getAchievements() async {
    emit(
      AchievementsState(
        status: Status.loading,
      ),
    );

    streamSubscription =
        achievementRepository.getAchievementsModel().listen((achievements) {
      emit(AchievementsState(
        status: Status.success,
        achievementModel: achievements,
      ));
    })
          ..onError((error) {
            emit(
              AchievementsState(
                errorMessage: error.toString(),
                status: Status.error,
              ),
            );
          });
  }
}
