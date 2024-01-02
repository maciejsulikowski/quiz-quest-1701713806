// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'politics_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PoliticsQuizModelImpl _$$PoliticsQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PoliticsQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results7.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PoliticsQuizModelImplToJson(
        _$PoliticsQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$Results7Impl _$$Results7ImplFromJson(Map<String, dynamic> json) =>
    _$Results7Impl(
      json['category'] as String,
      json['question'] as String,
      json['correct_answer'] as String,
      json['incorrect_answers'] as List<dynamic>,
    );

Map<String, dynamic> _$$Results7ImplToJson(_$Results7Impl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };
