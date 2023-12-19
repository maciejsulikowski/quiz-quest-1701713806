import 'package:freezed_annotation/freezed_annotation.dart';

part 'animals_quiz_model.g.dart';
part 'animals_quiz_model.freezed.dart';

@freezed
class AnimalsQuizModel with _$AnimalsQuizModel {
  factory AnimalsQuizModel(
    @JsonKey(name: "results") List<Results> results,
  ) = _AnimalsQuizModel;

  factory AnimalsQuizModel.fromJson(Map<String, dynamic> json) =>
      _$AnimalsQuizModelFromJson(json);
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
