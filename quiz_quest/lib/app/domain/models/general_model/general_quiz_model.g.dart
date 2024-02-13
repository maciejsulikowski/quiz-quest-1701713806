// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralQuizModelImpl _$$GeneralQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results9.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GeneralQuizModelImplToJson(
        _$GeneralQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$Results9Impl _$$Results9ImplFromJson(Map<String, dynamic> json) =>
    _$Results9Impl(
      json['category'] as String,
      json['question'] as String,
      json['correct_answer'] as String,
      json['incorrect_answers'] as List<dynamic>,
    );

Map<String, dynamic> _$$Results9ImplToJson(_$Results9Impl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };
