import 'package:freezed_annotation/freezed_annotation.dart';

part 'computer_science_quiz_model.g.dart';
part 'computer_science_quiz_model.freezed.dart';

@freezed
class ComputerScienceQuizModel with _$ComputerScienceQuizModel {
  factory ComputerScienceQuizModel(
    @JsonKey(name: "results") List<Results4> results,
  ) = _ComputerScienceQuizModel;

  factory ComputerScienceQuizModel.fromJson(Map<String, dynamic> json) =>
      _$ComputerScienceQuizModelFromJson(json);
}

@freezed
class Results4 with _$Results4 {
  factory Results4(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
    @JsonKey(name: "correct_answer") String correctAnswer,
    @JsonKey(name: "incorrect_answers") List incorrectAnswers,
  ) = _Results4;

  factory Results4.fromJson(Map<String, dynamic> json) =>
      _$Results4FromJson(json);
}
