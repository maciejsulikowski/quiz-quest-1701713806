import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/ranking_model/ranking_model.dart';
import 'package:quiz_quest/app/domain/repositories/ranking_respository/ranking_repository.dart';

part 'ranking_state.dart';

class RankingCubit extends Cubit<RankingState> {
  RankingCubit(this.rankingRepository) : super(RankingState());

  final RankingRepository rankingRepository;
  StreamSubscription? streamSubscription;

  Future<void> getRankingData() async {
    emit(RankingState(
      status: Status.loading,
    ));

    streamSubscription = rankingRepository.getRanking().listen((data) {
      // int totalPoints = 0;
      // for (var element in points) {
      //   totalPoints += element['total']!;
      // }

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
}
