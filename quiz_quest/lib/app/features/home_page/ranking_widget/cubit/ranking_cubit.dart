import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/ranking_model/ranking_model.dart';
import 'package:quiz_quest/app/domain/repositories/ranking_respository/ranking_repository.dart';

part 'ranking_state.dart';

@injectable
class RankingCubit extends Cubit<RankingState> {
  RankingCubit(this.rankingRepository) : super(RankingState());

  final RankingRepository rankingRepository;
  StreamSubscription? streamSubscription;

  Future<void> getRankingData() async {
    emit(RankingState(
      status: Status.loading,
    ));

    streamSubscription = rankingRepository.getRanking().listen((data) {
      emit(RankingState(
        rankingModel: data,
        status: Status.success,
      ));
    })
      ..onError((error) {
        emit(
          RankingState(
            status: Status.error,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  Future<void> updateEasyFilmsRankingPoints(int easyFilmsPoints) async {
    try {
      await rankingRepository.updateEasyFilmsRankingPoints(easyFilmsPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateMediumFilmsRankingPoints(int mediumFilmsPoints) async {
    try {
      await rankingRepository.updateMediumFilmsRankingPoints(mediumFilmsPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateHardFilmsRankingPoints(int hardFilmsPoints) async {
    try {
      await rankingRepository.updateHardFilmsRankingPoints(hardFilmsPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateEasyGamesRankingPoints(int easyGamesPoints) async {
    try {
      await rankingRepository.updateEasyGamesRankingPoints(easyGamesPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateMediumGamesRankingPoints(int mediumGamesPoints) async {
    try {
      await rankingRepository.updateMediumGamesRankingPoints(mediumGamesPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateHardGamesRankingPoints(int hardGamesPoints) async {
    try {
      await rankingRepository.updateHardGamesRankingPoints(hardGamesPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateEasyGeneralRankingPoints(int easyGeneralPoints) async {
    try {
      await rankingRepository.updateEasyGeneralRankingPoints(easyGeneralPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateMediumGeneralRankingPoints(int mediumGeneralPoints) async {
    try {
      await rankingRepository
          .updateMediumGeneralRankingPoints(mediumGeneralPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateHardGeneralRankingPoints(int hardGeneralPoints) async {
    try {
      await rankingRepository.updateHardGeneralRankingPoints(hardGeneralPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateEasyGeographyRankingPoints(int easyGeographyPoints) async {
    try {
      await rankingRepository
          .updateEasyGeographyRankingPoints(easyGeographyPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateMediumGeographyRankingPoints(
      int mediumGeographyPoints) async {
    try {
      await rankingRepository
          .updateMediumGeographyRankingPoints(mediumGeographyPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateHardGeographyRankingPoints(int hardGeographyPoints) async {
    try {
      await rankingRepository
          .updateHardGeographyRankingPoints(hardGeographyPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateEasyHistoryRankingPoints(int easyHistoryPoints) async {
    try {
      await rankingRepository.updateEasyHistoryRankingPoints(easyHistoryPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateMediumHistoryRankingPoints(int mediumHistoryPoints) async {
    try {
      await rankingRepository
          .updateMediumHistoryRankingPoints(mediumHistoryPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateHardHistoryRankingPoints(int hardHistoryPoints) async {
    try {
      await rankingRepository.updateHardHistoryRankingPoints(hardHistoryPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateEasyMusicRankingPoints(int easyMusicPoints) async {
    try {
      await rankingRepository.updateEasyMusicRankingPoints(easyMusicPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateMediumMusicRankingPoints(int mediumMusicPoints) async {
    try {
      await rankingRepository.updateMediumMusicRankingPoints(mediumMusicPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateHardMusicRankingPoints(int hardMusicPoints) async {
    try {
      await rankingRepository.updateHardMusicRankingPoints(hardMusicPoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateEasyNatureRankingPoints(int easyNaturePoints) async {
    try {
      await rankingRepository.updateEasyNatureRankingPoints(easyNaturePoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateMediumNatureRankingPoints(int mediumNaturePoints) async {
    try {
      await rankingRepository
          .updateMediumNatureRankingPoints(mediumNaturePoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> updateHardNatureRankingPoints(int hardNaturePoints) async {
    try {
      await rankingRepository.updateHardNatureRankingPoints(hardNaturePoints);

      emit(RankingState(
        status: Status.success,
      ));
    } catch (error) {
      emit(RankingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }
}
