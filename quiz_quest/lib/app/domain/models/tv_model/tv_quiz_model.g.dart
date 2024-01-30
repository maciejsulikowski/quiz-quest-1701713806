// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TVQuizModelImpl _$$TVQuizModelImplFromJson(Map<String, dynamic> json) =>
    _$TVQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results8.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TVQuizModelImplToJson(_$TVQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$Results8Impl _$$Results8ImplFromJson(Map<String, dynamic> json) =>
    _$Results8Impl(
      json['category'] as String,
      json['question'] as String,
      json['correct_answer'] as String,
      json['incorrect_answers'] as List<dynamic>,
    );

Map<String, dynamic> _$$Results8ImplToJson(_$Results8Impl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };
