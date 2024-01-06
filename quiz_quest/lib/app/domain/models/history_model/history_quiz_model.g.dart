// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryQuizModelImpl _$$HistoryQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results6.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HistoryQuizModelImplToJson(
        _$HistoryQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$Results6Impl _$$Results6ImplFromJson(Map<String, dynamic> json) =>
    _$Results6Impl(
      json['category'] as String,
      json['question'] as String,
      json['correct_answer'] as String,
      json['incorrect_answers'] as List<dynamic>,
    );

Map<String, dynamic> _$$Results6ImplToJson(_$Results6Impl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };
