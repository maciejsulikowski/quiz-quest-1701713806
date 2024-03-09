import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/ranking_model/ranking_model.dart';
import 'package:quiz_quest/app/domain/repositories/ranking_respository/ranking_repository.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/cubit/ranking_cubit.dart';

class MockRankingRepository extends Mock implements RankingRepository {}

void main() {
  late MockRankingRepository rankingRepository;
  late RankingCubit sut;

  setUp(() {
    rankingRepository = MockRankingRepository();
    sut = RankingCubit(rankingRepository);
  });

  final rankingData = RankingModel(
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
      totalPoints: 0);

  group('getRankingData', () {
    group('success', () {
      setUp(() {
        when(() => rankingRepository.getRanking())
            .thenAnswer((_) => Stream.value([rankingData]));
      });

      blocTest(
        'should emit Status.loading then rankingModel with Status.success',
        build: () => sut,
        act: (cubit) => cubit.getRankingData(),
        expect: () => [
          RankingState(status: Status.loading),
          RankingState(
            rankingModel: [rankingData],
            status: Status.success,
          ),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.getRanking())
            .thenAnswer((_) => Stream.error(Exception('test-exception-error')));
      });

      blocTest(
        'should emit Status.loading then errorMessage with Status.error',
        build: () => sut,
        act: (cubit) => cubit.getRankingData(),
        expect: () => [
          RankingState(status: Status.loading),
          RankingState(
            errorMessage: 'Exception: test-exception-error',
            status: Status.error,
          ),
        ],
      );
    });
  });
}
