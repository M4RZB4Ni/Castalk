// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ViewEpisodeModel _$$_ViewEpisodeModelFromJson(Map<String, dynamic> json) =>
    _$_ViewEpisodeModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ViewEpisodeModelToJson(_$_ViewEpisodeModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      season_id: json['season_id'] as int?,
      allow_comments: json['allow_comments'] as int?,
      allow_share: json['allow_share'] as int?,
      comments_count: json['comments_count'] as int?,
      likes_count: json['likes_count'] as int?,
      podcast: json['podcast'] == null
          ? null
          : PodcastValues.fromJson(json['podcast'] as Map<String, dynamic>),
      season: json['season'] == null
          ? null
          : SeasonValues.fromJson(json['season'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentsValues.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'season_id': instance.season_id,
      'allow_comments': instance.allow_comments,
      'allow_share': instance.allow_share,
      'comments_count': instance.comments_count,
      'likes_count': instance.likes_count,
      'podcast': instance.podcast,
      'season': instance.season,
      'comments': instance.comments,
    };

_$_PodcastValues _$$_PodcastValuesFromJson(Map<String, dynamic> json) =>
    _$_PodcastValues(
      id: json['id'] as int?,
      category_id: json['category_id'] as int?,
      title: json['title'] as String?,
      cover: json['cover'] as String?,
      description: json['description'] as String?,
      user_id: json['user_id'] as int?,
      covers: json['covers'] as int?,
      likes_count: json['likes_count'] as int?,
    );

Map<String, dynamic> _$$_PodcastValuesToJson(_$_PodcastValues instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.category_id,
      'title': instance.title,
      'cover': instance.cover,
      'description': instance.description,
      'user_id': instance.user_id,
      'covers': instance.covers,
      'likes_count': instance.likes_count,
    };

_$_SeasonValues _$$_SeasonValuesFromJson(Map<String, dynamic> json) =>
    _$_SeasonValues(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      podcast_id: json['podcast_id'] as int?,
      cover: json['cover'] as String?,
      podcast: json['podcast'] == null
          ? null
          : PodcastValues.fromJson(json['podcast'] as Map<String, dynamic>),
      likes_count: json['likes_count'] as int?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentsValues.fromJson(e as Map<String, dynamic>))
          .toList(),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => EpicodesValues.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SeasonValuesToJson(_$_SeasonValues instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'podcast_id': instance.podcast_id,
      'cover': instance.cover,
      'podcast': instance.podcast,
      'likes_count': instance.likes_count,
      'comments': instance.comments,
      'episodes': instance.episodes,
    };

_$_CommentsValues _$$_CommentsValuesFromJson(Map<String, dynamic> json) =>
    _$_CommentsValues(
      id: json['id'] as int?,
      owner_id: json['owner_id'] as int?,
      creator_type: json['creator_type'] as String?,
      creator_id: json['creator_id'] as int?,
      message: json['message'] as String?,
      reply_to: json['reply_to'] as String?,
      time: json['time'] as int?,
    );

Map<String, dynamic> _$$_CommentsValuesToJson(_$_CommentsValues instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.owner_id,
      'creator_type': instance.creator_type,
      'creator_id': instance.creator_id,
      'message': instance.message,
      'reply_to': instance.reply_to,
      'time': instance.time,
    };

_$_EpicodesValues _$$_EpicodesValuesFromJson(Map<String, dynamic> json) =>
    _$_EpicodesValues(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      season_id: json['season_id'] as int?,
      allow_comments: json['allow_comments'] as int?,
      allow_share: json['allow_share'] as int?,
      cover: json['cover'] as String?,
      comments_count: json['comments_count'] as int?,
      likes_count: json['likes_count'] as int?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentsValues.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EpicodesValuesToJson(_$_EpicodesValues instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'season_id': instance.season_id,
      'allow_comments': instance.allow_comments,
      'allow_share': instance.allow_share,
      'cover': instance.cover,
      'comments_count': instance.comments_count,
      'likes_count': instance.likes_count,
      'comments': instance.comments,
    };
