// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateEpisodeModel _$$_CreateEpisodeModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateEpisodeModel(
      title: json['title'] as String,
      description: json['description'] as String,
      podcastId: json['podcastId'] as String,
      seasonId: json['seasonId'] as String,
      imageID: json['imageID'] as String,
      allowShare: json['allowShare'] as bool,
      allowComments: json['allowComments'] as bool,
      fileID: json['fileID'] as String,
    );

Map<String, dynamic> _$$_CreateEpisodeModelToJson(
        _$_CreateEpisodeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'podcastId': instance.podcastId,
      'seasonId': instance.seasonId,
      'imageID': instance.imageID,
      'allowShare': instance.allowShare,
      'allowComments': instance.allowComments,
      'fileID': instance.fileID,
    };
