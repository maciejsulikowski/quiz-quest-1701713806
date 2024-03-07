import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/data/data_sources/achievements_data_source/achievements_data_source.dart';
import 'package:quiz_quest/app/domain/repositories/achievement_repository/achievement_repository.dart';

class MockAchievementDataSource extends Mock implements AchievementDataSource {}

void main() {
  AchievementRepository sut;
  MockAchievementDataSource dataSource;

  setUp(() {
    dataSource = MockAchievementDataSource();
    sut = AchievementRepository(achievementDataSource: dataSource);
  });

  group('getAchievementModel', () {
    test('description', () {

      

    });
  });
}
