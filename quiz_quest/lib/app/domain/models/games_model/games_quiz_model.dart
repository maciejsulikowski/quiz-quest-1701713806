import 'package:freezed_annotation/freezed_annotation.dart';

part 'games_quiz_model.g.dart';
part 'games_quiz_model.freezed.dart';

@freezed
class GamesQuizModel with _$GamesQuizModel {
  factory GamesQuizModel(
    @JsonKey(name: "results") List<Results3> results,
  ) = _GamesQuizModel;

  factory GamesQuizModel.fromJson(Map<String, dynamic> json) =>
      _$GamesQuizModelFromJson(json);
}

@freezed
class Results3 with _$Results3 {
  factory Results3(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
    @JsonKey(name: "correct_answer") String correctAnswer,
    @JsonKey(name: "incorrect_answers") List incorrectAnswers,
  ) = _Results3;

  factory Results3.fromJson(Map<String, dynamic> json) =>
      _$Results3FromJson(json);
}
