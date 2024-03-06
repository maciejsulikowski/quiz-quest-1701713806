import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_quest/app/domain/models/achievements_model/achievements_model.dart';

void main() {
  test('test name', () {
    final model = AchievementModel(
      userID: 'XXX',
      isFirstAchievementReady: false,
      isSecondAchievementReady: false,
      isThirdAchievementReady: false,
      isFourthAchievementReady: false,
      isFifthAchievementReady: false,
      isSixthAchievementReady: false,
    );

    expect(model, isA<AchievementModel>());
  });
}
