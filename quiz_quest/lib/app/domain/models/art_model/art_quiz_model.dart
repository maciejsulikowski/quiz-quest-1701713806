import 'package:freezed_annotation/freezed_annotation.dart';

part 'art_quiz_model.g.dart';
part 'art_quiz_model.freezed.dart';

@freezed
class ArtQuizModel with _$ArtQuizModel {
  factory ArtQuizModel(
    @JsonKey(name: "results") List<Results3> results,
  ) = _ArtQuizModel;

  factory ArtQuizModel.fromJson(Map<String, dynamic> json) =>
      _$ArtQuizModelFromJson(json);
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
