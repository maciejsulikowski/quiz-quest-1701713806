import 'package:freezed_annotation/freezed_annotation.dart';

part 'politics_quiz_model.g.dart';
part 'politics_quiz_model.freezed.dart';

@freezed
class PoliticsQuizModel with _$PoliticsQuizModel {
  factory PoliticsQuizModel(
    @JsonKey(name: "results") List<Results7> results,
  ) = _PoliticsQuizModel;

  factory PoliticsQuizModel.fromJson(Map<String, dynamic> json) =>
      _$PoliticsQuizModelFromJson(json);
}

@freezed
class Results7 with _$Results7 {
  factory Results7(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
    @JsonKey(name: "correct_answer") String correctAnswer,
    @JsonKey(name: "incorrect_answers") List incorrectAnswers,
  ) = _Results7;

  factory Results7.fromJson(Map<String, dynamic> json) =>
      _$Results7FromJson(json);
}
