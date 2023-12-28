import 'package:freezed_annotation/freezed_annotation.dart';

part 'sports_quiz_model.g.dart';
part 'sports_quiz_model.freezed.dart';

@freezed
class SportsQuizModel with _$SportsQuizModel {
  factory SportsQuizModel(
    @JsonKey(name: "results") List<Results1> results,
  ) = _SportsQuizModel;

  factory SportsQuizModel.fromJson(Map<String, dynamic> json) =>
      _$SportsQuizModelFromJson(json);
}

@freezed
class Results1 with _$Results1 {
  const Results1._();
  factory Results1(
    @JsonKey(name: "category") String category,
    @JsonKey(name: "question") String question,
  ) = _Results1;

  factory Results1.fromJson(Map<String, dynamic> json) =>
      _$Results1FromJson(json);
}
