// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'computer_science_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComputerScienceQuizModelImpl _$$ComputerScienceQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ComputerScienceQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results4.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ComputerScienceQuizModelImplToJson(
        _$ComputerScienceQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$Results4Impl _$$Results4ImplFromJson(Map<String, dynamic> json) =>
    _$Results4Impl(
      json['category'] as String,
      json['question'] as String,
      json['correct_answer'] as String,
      json['incorrect_answers'] as List<dynamic>,
    );

Map<String, dynamic> _$$Results4ImplToJson(_$Results4Impl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };
