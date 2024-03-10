import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_quest/app/domain/models/ranking_model/ranking_model.dart';

void main() {
  test('test name', () {
    final model = RankingModel(
      userID: 'XXX',
      userName: 'Maciek',
      filmsEPoints: 0,
      filmsMPoints: 0,
      filmsHPoints: 0,
      gamesEPoints: 0,
      gamesMPoints: 0,
      gamesHPoints: 0,
      generalEPoints: 0,
      generalMPoints: 0,
      generalHPoints: 0,
      geoEPoints: 0,
      geoMPoints: 0,
      geoHPoints: 0,
      historyEPoints: 0,
      historyMPoints: 0,
      historyHPoints: 0,
      musicEPoints: 0,
      musicMPoints: 0,
      musicHPoints: 0,
      natureEPoints: 0,
      natureMPoints: 0,
      natureHPoints: 0,
      sportEPoints: 0,
      sportMPoints: 0,
      sportHPoints: 0,
      tvEPoints: 0,
      tvMPoints: 0,
      tvHPoints: 0,
      totalPoints: 0,
    );

    expect(model, isA<RankingModel>());
  });
}
