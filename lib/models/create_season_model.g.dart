// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateSeasonModel _$$_CreateSeasonModelFromJson(Map<String, dynamic> json) =>
    _$_CreateSeasonModel(
      title: json['title'] as String,
      description: json['description'] as String,
      podcastId: json['podcastId'] as String,
      imageID: json['imageID'] as String,
    );

Map<String, dynamic> _$$_CreateSeasonModelToJson(
        _$_CreateSeasonModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'podcastId': instance.podcastId,
      'imageID': instance.imageID,
    };
