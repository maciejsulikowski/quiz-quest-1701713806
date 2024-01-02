import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_quiz_model.g.dart';
part 'history_quiz_model.freezed.dart';

@freezed
class HistoryQuizModel with _$HistoryQuizModel {
  factory HistoryQuizModel(
    @JsonKey(name: "results") List<Results6> results,
  ) = _HistoryQuizModel;

  factory HistoryQuizModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryQuizModelFromJson(json);
}

@freezed
class Results6 with _$Results6 {
  factory Results6(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
    @JsonKey(name: "correct_answer") String correctAnswer,
    @JsonKey(name: "incorrect_answers") List incorrectAnswers,
  ) = _Results6;

  factory Results6.fromJson(Map<String, dynamic> json) =>
      _$Results6FromJson(json);
}
