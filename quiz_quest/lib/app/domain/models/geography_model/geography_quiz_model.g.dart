// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geography_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeographyQuizModelImpl _$$GeographyQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeographyQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results5.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GeographyQuizModelImplToJson(
        _$GeographyQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$Results5Impl _$$Results5ImplFromJson(Map<String, dynamic> json) =>
    _$Results5Impl(
      json['category'] as String,
      json['question'] as String,
      json['correct_answer'] as String,
      json['incorrect_answers'] as List<dynamic>,
    );

Map<String, dynamic> _$$Results5ImplToJson(_$Results5Impl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };
