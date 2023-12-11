import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.g.dart';
part 'categories_model.freezed.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  factory CategoriesModel(
    @JsonKey(name: "results") List<Results> results,
  ) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}

@freezed
class Results with _$Results {
  factory Results(
    @JsonKey(name: "category") category,
    @JsonKey(name: "question") question,
  ) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
