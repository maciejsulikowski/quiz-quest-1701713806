import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_quest/app/domain/models/user_model/user_model.dart';

void main() {
  test('should call model as instance of AchievementModel', () {
    final model = UserModel(
      name: 'Maciek',
      surname: 'Sulik',
      imageURL: 'image_url',
      gender: 'Male',
      favouriteCategory: 'Films',
      isUserNew: false,
    );

    expect(model, isA<UserModel>());
  });
}
