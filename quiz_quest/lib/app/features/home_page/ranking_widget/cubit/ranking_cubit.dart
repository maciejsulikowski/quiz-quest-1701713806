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
}
