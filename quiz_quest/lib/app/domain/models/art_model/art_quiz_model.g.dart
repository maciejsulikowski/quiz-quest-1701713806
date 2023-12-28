// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'art_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtQuizModelImpl _$$ArtQuizModelImplFromJson(Map<String, dynamic> json) =>
    _$ArtQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtQuizModelImplToJson(_$ArtQuizModelImpl instance) =>
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
