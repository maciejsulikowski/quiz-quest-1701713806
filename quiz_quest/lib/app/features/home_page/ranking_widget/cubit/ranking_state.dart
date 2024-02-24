part of 'ranking_cubit.dart';

class RankingState {
  RankingState({
    this.rankingModel,
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<RankingModel>? rankingModel;
  final Status status;
  final String? errorMessage;
}
