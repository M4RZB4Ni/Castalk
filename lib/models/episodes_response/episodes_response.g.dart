// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodesModel _$$_EpisodesModelFromJson(Map<String, dynamic> json) =>
    _$_EpisodesModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EpisodesModelToJson(_$_EpisodesModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      created_at: json['created_at'] as String?,
      covers:
          (json['covers'] as List<dynamic>?)?.map((e) => e as String).toList(),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => EpisodeItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tags.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'created_at': instance.created_at,
      'covers': instance.covers,
      'episodes': instance.episodes,
      'tags': instance.tags,
    };

_$_EpisodeItems _$$_EpisodeItemsFromJson(Map<String, dynamic> json) =>
    _$_EpisodeItems(
      id: json['id'] as int?,
      name: json['name'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$_EpisodeItemsToJson(_$_EpisodeItems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover,
    };

_$_Tags _$$_TagsFromJson(Map<String, dynamic> json) => _$_Tags(
      id: json['id'] as int?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_TagsToJson(_$_Tags instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
