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

  group('updateEasyFilmsRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateEasyFilmsRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateEasyFilmsRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyFilmsRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateEasyFilmsRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateEasyFilmsRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyFilmsRankingPoints(0),
        expect: () => [
          RankingState(status: Status.error, errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });


  group('updateMediumFilmsRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateMediumFilmsRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateMediumFilmsRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumFilmsRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateMediumFilmsRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateMediumFilmsRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumFilmsRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateHardFilmsRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateHardFilmsRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateHardFilmsRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardFilmsRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateHardFilmsRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateHardFilmsRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardFilmsRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateMediumGamesRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateMediumGamesRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateMediumGamesRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumGamesRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateMediumGamesRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateMediumGamesRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumGamesRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateEasyGamesRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateEasyGamesRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateEasyGamesRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyGamesRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateEasyGamesRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateEasyGamesRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyGamesRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateHardGamesRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateHardGamesRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateHardGamesRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardGamesRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateHardGamesRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateHardGamesRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardGamesRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });


  group('updateMediumGeneralRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateMediumGeneralRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateMediumGeneralRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumGeneralRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateMediumGeneralRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateMediumGeneralRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumGeneralRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateEasyGeneralRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateEasyGeneralRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateEasyGeneralRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyGeneralRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateEasyGeneralRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateEasyGeneralRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyGeneralRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateHardGeneralRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateHardGeneralRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateHardGeneralRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardGeneralRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateHardGeneralRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateHardGeneralRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardGeneralRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateEasyGeographyRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateEasyGeographyRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateEasyGeographyRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyGeographyRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateEasyGeographyRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateEasyGeographyRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyGeographyRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateMediumGeographyRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateMediumGeographyRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateMediumGeographyRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumGeographyRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateMediumGeographyRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateMediumGeographyRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumGeographyRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateHardGeographyRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateHardGeographyRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateHardGeographyRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardGeographyRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateHardGeographyRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateHardGeographyRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardGeographyRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });
  group('updateEasyHistoryRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateEasyHistoryRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateEasyHistoryRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyHistoryRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateEasyHistoryRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateEasyHistoryRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyHistoryRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateMediumHistoryRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateMediumHistoryRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateMediumHistoryRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumHistoryRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateMediumHistoryRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateMediumHistoryRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumHistoryRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateHardHistoryRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateHardHistoryRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateHardHistoryRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardHistoryRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateHardHistoryRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateHardHistoryRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardHistoryRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });
  group('updateEasyMusicRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateEasyMusicRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateEasyMusicRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyMusicRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateEasyMusicRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateEasyMusicRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyMusicRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateMediumMusicRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateMediumMusicRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateMediumMusicRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumMusicRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateMediumMusicRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateMediumMusicRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumMusicRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateHardMusicRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateHardMusicRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateHardMusicRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardMusicRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateHardMusicRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateHardMusicRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardMusicRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateEasyNatureRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateEasyNatureRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateEasyNatureRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyNatureRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateEasyNatureRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateEasyNatureRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateEasyNatureRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateMediumNatureRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateMediumNatureRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateMediumNatureRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumNatureRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateMediumNatureRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateMediumNatureRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumNatureRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });



  group('updateHardNatureRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateHardNatureRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateHardNatureRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardNatureRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateHardNatureRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateHardNatureRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateHardNatureRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateMediumMusicRankingPoints', () {
    group('succes', () {
      setUp(() {
        when(() => rankingRepository.updateMediumMusicRankingPoints(0))
            .thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call rankingRepository.updateMediumMusicRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumMusicRankingPoints(0),
        expect: () => [
          RankingState(status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => rankingRepository.updateMediumMusicRankingPoints(0))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call rankingRepository.updateMediumMusicRankingPoints() method',
        build: () => sut,
        act: (cubit) => cubit.updateMediumMusicRankingPoints(0),
        expect: () => [
          RankingState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

}
