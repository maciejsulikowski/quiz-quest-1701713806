part of 'achievements_cubit.dart';

// class AchievementsState {
//   AchievementsState({
//     this.achievementModel,
//     this.status = Status.initial,
//     this.errorMessage,
//   });

//   final AchievementModel? achievementModel;
//   final Status status;
//   final String? errorMessage;
// }

@freezed
class AchievementsState with _$AchievementsState {
  factory AchievementsState({
    AchievementModel? achievementModel,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _AchievementsState;
}
