import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicles_quiz_model.g.dart';
part 'vehicles_quiz_model.freezed.dart';

@freezed
class VehiclesQuizModel with _$VehiclesQuizModel {
  factory VehiclesQuizModel(
    @JsonKey(name: "results") List<Results8> results,
  ) = _VehiclesQuizModel;

  factory VehiclesQuizModel.fromJson(Map<String, dynamic> json) =>
      _$VehiclesQuizModelFromJson(json);
}

@freezed
class Results8 with _$Results8 {
  const Results8._();
  factory Results8(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
    @JsonKey(name: "correct_answer") String correctAnswer,
    @JsonKey(name: "incorrect_answers") List incorrectAnswers,
  ) = _Results8;

  factory Results8.fromJson(Map<String, dynamic> json) =>
      _$Results8FromJson(json);
}
