// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'films_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilmsQuizModelImpl _$$FilmsQuizModelImplFromJson(Map<String, dynamic> json) =>
    _$FilmsQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FilmsQuizModelImplToJson(
        _$FilmsQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$Results2Impl _$$Results2ImplFromJson(Map<String, dynamic> json) =>
    _$Results2Impl(
      json['category'] as String,
      json['question'] as String,
      json['correct_answer'] as String,
      json['incorrect_answers'] as List<dynamic>,
    );

Map<String, dynamic> _$$Results2ImplToJson(_$Results2Impl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };
