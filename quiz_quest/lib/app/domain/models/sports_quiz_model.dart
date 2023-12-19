import 'package:freezed_annotation/freezed_annotation.dart';

part 'sports_quiz_model.g.dart';
part 'sports_quiz_model.freezed.dart';

@freezed
class SportsQuizModel with _$SportsQuizModel {
  factory SportsQuizModel(
    @JsonKey(name: "results") List<Results> results,
  ) = _SportsQuizModel;

  factory SportsQuizModel.fromJson(Map<String, dynamic> json) =>
      _$SportsQuizModelFromJson(json);
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
