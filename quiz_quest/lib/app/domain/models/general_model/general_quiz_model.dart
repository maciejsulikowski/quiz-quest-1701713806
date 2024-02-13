import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_quiz_model.g.dart';
part 'general_quiz_model.freezed.dart';

@freezed
class GeneralQuizModel with _$GeneralQuizModel {
  factory GeneralQuizModel(
    @JsonKey(name: "results") List<Results9> results,
  ) = _GeneralQuizModel;

  factory GeneralQuizModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralQuizModelFromJson(json);
}

@freezed
class Results9 with _$Results9 {
  factory Results9(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
    @JsonKey(name: "correct_answer") String correctAnswer,
    @JsonKey(name: "incorrect_answers") List incorrectAnswers,
  ) = _Results9;

  factory Results9.fromJson(Map<String, dynamic> json) =>
      _$Results9FromJson(json);
}
