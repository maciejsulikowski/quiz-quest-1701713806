// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sports_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SportsQuizModelImpl _$$SportsQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SportsQuizModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => Results1.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SportsQuizModelImplToJson(
        _$SportsQuizModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$Results1Impl _$$Results1ImplFromJson(Map<String, dynamic> json) =>
    _$Results1Impl(
      json['category'] as String,
      json['question'] as String,
    );

Map<String, dynamic> _$$Results1ImplToJson(_$Results1Impl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'question': instance.question,
    };
