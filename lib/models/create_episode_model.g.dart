// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateEpisodeModel _$$_CreateEpisodeModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateEpisodeModel(
      name: json['name'] as String,
      description: json['description'] as String,
      season_id: json['season_id'] as String,
      allow_comments: json['allow_comments'] as String,
      allow_share: json['allow_share'] as String,
      updated_at: json['updated_at'] as String,
      created_at: json['created_at'] as String,
      comments_count: json['comments_count'] as int,
      likes_count: json['likes_count'] as int,
      comments: json['comments'] as List<dynamic>,
    );

Map<String, dynamic> _$$_CreateEpisodeModelToJson(
        _$_CreateEpisodeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'season_id': instance.season_id,
      'allow_comments': instance.allow_comments,
      'allow_share': instance.allow_share,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'comments_count': instance.comments_count,
      'likes_count': instance.likes_count,
      'comments': instance.comments,
    };
