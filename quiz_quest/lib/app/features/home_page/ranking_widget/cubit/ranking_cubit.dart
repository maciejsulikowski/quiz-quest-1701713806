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

  // Future<void> updateRankingName(String name) async {
  //   try {
  //     await userRepository.updateRankingName(name);
  //     emit(
  //       RankingState(
  //         status: Status.success,
  //       ),
  //     );
  //   } catch (error) {
  //     emit(
  //       RankingState(
  //         status: Status.error,
  //         errorMessage: error.toString(),
  //       ),
  //     );
  //   }
  // }
}
