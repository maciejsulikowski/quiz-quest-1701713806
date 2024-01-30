// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GamesQuizModelImpl _$$GamesQuizModelImplFromJson(Map<String, dynamic> json) =>
    _$GamesQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GamesQuizModelImplToJson(
        _$GamesQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$Results3Impl _$$Results3ImplFromJson(Map<String, dynamic> json) =>
    _$Results3Impl(
      json['category'] as String,
      json['question'] as String,
      json['correct_answer'] as String,
      json['incorrect_answers'] as List<dynamic>,
    );

Map<String, dynamic> _$$Results3ImplToJson(_$Results3Impl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };
