// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sports_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SportsQuizModelImpl _$$SportsQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SportsQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SportsQuizModelImplToJson(
        _$SportsQuizModelImpl instance) =>
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
