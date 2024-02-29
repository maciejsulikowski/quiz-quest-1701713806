part of 'ranking_cubit.dart';

// class RankingState {
//   RankingState({
//     this.rankingModel,
//     this.status = Status.initial,
//     this.errorMessage,
//   });

//   final List<RankingModel>? rankingModel;
//   final Status status;
//   final String? errorMessage;
// }

@freezed
class RankingState with _$RankingState {
  factory RankingState({
    List<RankingModel>? rankingModel,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _RankingState;
}
