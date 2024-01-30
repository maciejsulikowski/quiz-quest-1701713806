import 'package:freezed_annotation/freezed_annotation.dart';

part 'nature_quiz_model.g.dart';
part 'nature_quiz_model.freezed.dart';

@freezed
class NatureQuizModel with _$NatureQuizModel {
  factory NatureQuizModel(
    @JsonKey(name: "results") List<Results7> results,
  ) = _NatureQuizModel;

  factory NatureQuizModel.fromJson(Map<String, dynamic> json) =>
      _$NatureQuizModelFromJson(json);
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
