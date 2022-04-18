// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      podcasts: (json['podcasts'] as List<dynamic>?)
          ?.map((e) => Podcast.fromJson(e as Map<String, dynamic>))
          .toList(),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((e) => Season.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'podcasts': instance.podcasts,
      'episodes': instance.episodes,
      'seasons': instance.seasons,
    };

_$_Podcast _$$_PodcastFromJson(Map<String, dynamic> json) => _$_Podcast(
      id: json['id'] as int?,
      title: json['title'] as String?,
      cover: json['cover'] as String?,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_PodcastToJson(_$_Podcast instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cover': instance.cover,
      'created_at': instance.created_at,
    };

_$_Episode _$$_EpisodeFromJson(Map<String, dynamic> json) => _$_Episode(
      id: json['id'] as int?,
      likes: json['likes'] as int?,
      is_liked: json['is_liked'] as bool?,
      name: json['name'] as String?,
      cover: json['cover'] as String?,
      created_at: json['created_at'] as String?,
      created_at_diff: json['created_at_diff'] as String?,
      episode_time: json['episode_time'] as String?,
    );

Map<String, dynamic> _$$_EpisodeToJson(_$_Episode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'likes': instance.likes,
      'is_liked': instance.is_liked,
      'name': instance.name,
      'cover': instance.cover,
      'created_at': instance.created_at,
      'created_at_diff': instance.created_at_diff,
      'episode_time': instance.episode_time,
    };

_$_Season _$$_SeasonFromJson(Map<String, dynamic> json) => _$_Season(
      id: json['id'] as int?,
      name: json['name'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$_SeasonToJson(_$_Season instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover,
    };
