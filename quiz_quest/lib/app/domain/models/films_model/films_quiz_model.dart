import 'package:freezed_annotation/freezed_annotation.dart';

part 'films_quiz_model.g.dart';
part 'films_quiz_model.freezed.dart';

@freezed
class FilmsQuizModel with _$FilmsQuizModel {
  factory FilmsQuizModel(
    @JsonKey(name: "results") List<Results2> results,
  ) = _FilmsQuizModel;

  factory FilmsQuizModel.fromJson(Map<String, dynamic> json) =>
      _$FilmsQuizModelFromJson(json);
}

@freezed
class Results2 with _$Results2 {
  factory Results2(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
    @JsonKey(name: "correct_answer") String correctAnswer,
    @JsonKey(name: "incorrect_answers") List incorrectAnswers,
  ) = _Results2;

  factory Results2.fromJson(Map<String, dynamic> json) =>
      _$Results2FromJson(json);
}
