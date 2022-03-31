// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserListModel _$$_UserListModelFromJson(Map<String, dynamic> json) =>
    _$_UserListModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserListItems.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserListModelToJson(_$_UserListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_UserListItems _$$_UserListItemsFromJson(Map<String, dynamic> json) =>
    _$_UserListItems(
      id: json['id'] as int?,
      category_id: json['category_id'] as int?,
      title: json['title'] as String?,
      cover: json['cover'] as String?,
      description: json['description'] as String?,
      user_id: json['user_id'] as int?,
      covers: json['covers'] as int?,
      user: json['user'] == null
          ? null
          : UserValues.fromJson(json['user'] as Map<String, dynamic>),
      likes_count: json['likes_count'] as int?,
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((e) => SeasonValues.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentsValues.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserListItemsToJson(_$_UserListItems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.category_id,
      'title': instance.title,
      'cover': instance.cover,
      'description': instance.description,
      'user_id': instance.user_id,
      'covers': instance.covers,
      'user': instance.user,
      'likes_count': instance.likes_count,
      'seasons': instance.seasons,
      'comments': instance.comments,
    };

_$_UserValues _$$_UserValuesFromJson(Map<String, dynamic> json) =>
    _$_UserValues(
      id: json['id'] as int?,
      username: json['username'] as String?,
      mobile: json['mobile'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      user_profile: json['user_profile'] == null
          ? null
          : UserProfileItems.fromJson(
              json['user_profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserValuesToJson(_$_UserValues instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'mobile': instance.mobile,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'user_profile': instance.user_profile,
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

_$_UserProfileItems _$$_UserProfileItemsFromJson(Map<String, dynamic> json) =>
    _$_UserProfileItems(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      full_name: json['full_name'] as String?,
      name: json['name'] as String?,
      birthday: json['birthday'] as String?,
      gender: json['gender'] as String?,
      favorite_categories: json['favorite_categories'] as String?,
    );

Map<String, dynamic> _$$_UserProfileItemsToJson(_$_UserProfileItems instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'full_name': instance.full_name,
      'name': instance.name,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'favorite_categories': instance.favorite_categories,
    };
