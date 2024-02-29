import 'package:freezed_annotation/freezed_annotation.dart';

part 'achievements_model.freezed.dart';

// class AchievementModel {
//   AchievementModel({
//     required this.userID,
//     required this.isFirstAchievementReady,
//     required this.isSecondAchievementReady,
//     required this.isThirdAchievementReady,
//     required this.isFourthAchievementReady,
//     required this.isFifthAchievementReady,
//     required this.isSixthAchievementReady,
//   });

//   final String userID;
//   bool isFirstAchievementReady;
//   bool isSecondAchievementReady;
//   bool isThirdAchievementReady;
//   bool isFourthAchievementReady;
//   bool isFifthAchievementReady;
//   bool isSixthAchievementReady;
// }

@freezed
class AchievementModel with _$AchievementModel {
  factory AchievementModel({
    required String userID,
    required bool isFirstAchievementReady,
    required bool isSecondAchievementReady,
    required bool isThirdAchievementReady,
    required bool isFourthAchievementReady,
    required bool isFifthAchievementReady,
    required bool isSixthAchievementReady,
  }) = _AchievementModel;
}
