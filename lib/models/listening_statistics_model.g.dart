// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listening_statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListeningAnalyticsModel _$$_ListeningAnalyticsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListeningAnalyticsModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ListeningAnalyticsModelToJson(
        _$_ListeningAnalyticsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      total_listening_time: json['total_listening_time'] as int?,
      total_listening_time_by_week:
          (json['total_listening_time_by_week'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
      episodes: json['episodes'] as int?,
      your_listening_routine: json['your_listening_routine'] as int?,
      field_of_interest: json['field_of_interest'] == null
          ? null
          : FieldOfInterest.fromJson(
              json['field_of_interest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'total_listening_time': instance.total_listening_time,
      'total_listening_time_by_week': instance.total_listening_time_by_week,
      'episodes': instance.episodes,
      'your_listening_routine': instance.your_listening_routine,
      'field_of_interest': instance.field_of_interest,
    };

_$_FieldOfInterest _$$_FieldOfInterestFromJson(Map<String, dynamic> json) =>
    _$_FieldOfInterest(
      comedy: json['comedy'] as int?,
      psychology: json['psychology'] as int?,
      sport: json['sport'] as int?,
    );

Map<String, dynamic> _$$_FieldOfInterestToJson(_$_FieldOfInterest instance) =>
    <String, dynamic>{
      'comedy': instance.comedy,
      'psychology': instance.psychology,
      'sport': instance.sport,
    };
