import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_quiz_model.g.dart';
part 'music_quiz_model.freezed.dart';

@freezed
class MusicQuizModel with _$MusicQuizModel {
  factory MusicQuizModel(
    @JsonKey(name: "results") List<Results4> results,
  ) = _MusicQuizModel;

  factory MusicQuizModel.fromJson(Map<String, dynamic> json) =>
      _$MusicQuizModelFromJson(json);
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
