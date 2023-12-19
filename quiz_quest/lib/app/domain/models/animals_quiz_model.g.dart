// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animals_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimalsQuizModelImpl _$$AnimalsQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimalsQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnimalsQuizModelImplToJson(
        _$AnimalsQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      json['category'] as String,
      json['question'] as String,
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
    };
