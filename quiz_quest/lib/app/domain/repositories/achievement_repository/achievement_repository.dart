import 'package:injectable/injectable.dart';
import 'package:quiz_quest/app/data/data_sources/achievements_data_source/achievements_data_source.dart';
import 'package:quiz_quest/app/domain/models/achievements_model/achievements_model.dart';

@injectable
class AchievementRepository {
  AchievementRepository({required this.achievementDataSource});

  final AchievementDataSource achievementDataSource;

  Stream<AchievementModel> getAchievementsModel() {
    final data = achievementDataSource.getAchievementsData();

    return data.map((doc) {
      return AchievementModel(
        userID: doc['user_id'],
        isFirstAchievementReady: doc['is_first_achievement_ready'],
        isSecondAchievementReady: doc['is_second_achievement_ready'],
        isThirdAchievementReady: doc['is_third_achievement_ready'],
        isFourthAchievementReady: doc['is_fourth_achievement_ready'],
        isFifthAchievementReady: doc['is_fifth_achievement_ready'],
        isSixthAchievementReady: doc['is_sixth_achievement_ready'],
      );
    });
  }

  Future<void> setFalseAchievements() async {
    return achievementDataSource.setFalseAchievements();
  }
}
