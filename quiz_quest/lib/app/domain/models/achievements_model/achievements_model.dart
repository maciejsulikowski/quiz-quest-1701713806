class AchievementModel {
  AchievementModel({
    required this.userID,
    required this.isFirstAchievementReady,
    required this.isSecondAchievementReady,
    required this.isThirdAchievementReady,
    required this.isFourthAchievementReady,
    required this.isFifthAchievementReady,
    required this.isSixthAchievementReady,
  });

  final String userID;
  bool isFirstAchievementReady;
  bool isSecondAchievementReady;
  bool isThirdAchievementReady;
  bool isFourthAchievementReady;
  bool isFifthAchievementReady;
  bool isSixthAchievementReady;
}
