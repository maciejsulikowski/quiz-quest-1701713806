import 'package:freezed_annotation/freezed_annotation.dart';

part 'geography_quiz_model.g.dart';
part 'geography_quiz_model.freezed.dart';

@freezed
class GeographyQuizModel with _$GeographyQuizModel {
  factory GeographyQuizModel(
    @JsonKey(name: "results") List<Results5> results,
  ) = _GeographyQuizModel;

  factory GeographyQuizModel.fromJson(Map<String, dynamic> json) =>
      _$GeographyQuizModelFromJson(json);
}
// for (var element in points) {
//         easyPoints += element['easy']!;
//         mediumPoints += element['medium']!;
//         hardPoints += element['hard']!;
//         totalPoints += element['total']!;
//       }

//       int combinedPoints = easyPoints + mediumPoints + hardPoints;

@freezed
class Results5 with _$Results5 {
  factory Results5(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
    @JsonKey(name: "correct_answer") String correctAnswer,
    @JsonKey(name: "incorrect_answers") List incorrectAnswers,
  ) = _Results5;

  factory Results5.fromJson(Map<String, dynamic> json) =>
      _$Results5FromJson(json);
}
