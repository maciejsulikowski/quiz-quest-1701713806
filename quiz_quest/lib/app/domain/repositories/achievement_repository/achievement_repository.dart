import 'package:injectable/injectable.dart';
import 'package:quiz_quest/app/data/data_sources/achievements_data_source/achievements_data_source.dart';

@injectable
class AchievementRepository {
  AchievementRepository({required this.achievementDataSource});

  final AchievementDataSource achievementDataSource;

  Future<void> setFalseAchievements() async {
    return achievementDataSource.setFalseAchievements();
  }
}
