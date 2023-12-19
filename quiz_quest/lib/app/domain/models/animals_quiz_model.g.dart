// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animals_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimalsQuizModelImpl _$$AnimalsQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimalsQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnimalsQuizModelImplToJson(
        _$AnimalsQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$Results2Impl _$$Results2ImplFromJson(Map<String, dynamic> json) =>
    _$Results2Impl(
      json['category'] as String,
      json['question'] as String,
    );

Map<String, dynamic> _$$Results2ImplToJson(_$Results2Impl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
    };
