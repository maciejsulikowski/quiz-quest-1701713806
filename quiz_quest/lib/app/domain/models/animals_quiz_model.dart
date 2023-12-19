import 'package:freezed_annotation/freezed_annotation.dart';

part 'animals_quiz_model.g.dart';
part 'animals_quiz_model.freezed.dart';

@freezed
class AnimalsQuizModel with _$AnimalsQuizModel {
  factory AnimalsQuizModel(
    @JsonKey(name: "results") List<Results2> results,
  ) = _AnimalsQuizModel;

  factory AnimalsQuizModel.fromJson(Map<String, dynamic> json) =>
      _$AnimalsQuizModelFromJson(json);
}

@freezed
class Results2 with _$Results2 {
  const Results2._();
  factory Results2(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
  ) = _Results2;

  factory Results2.fromJson(Map<String, dynamic> json) =>
      _$Results2FromJson(json);
}
