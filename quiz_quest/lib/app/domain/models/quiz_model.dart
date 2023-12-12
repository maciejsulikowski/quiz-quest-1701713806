import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.g.dart';
part 'quiz_model.freezed.dart';

@freezed
class QuizModel with _$QuizModel {
  factory QuizModel(
    @JsonKey(name: "results") List<Results> results,
  ) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}

@freezed
class Results with _$Results {
  const Results._();
  factory Results(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
  ) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
