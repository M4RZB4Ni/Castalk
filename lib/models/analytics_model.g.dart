// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnalyticsModel _$$_AnalyticsModelFromJson(Map<String, dynamic> json) =>
    _$_AnalyticsModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnalyticsModelToJson(_$_AnalyticsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      listens: json['listens'] as int?,
      followers: json['followers'] as int?,
      posts: json['posts'] as int?,
      plays: json['plays'] as int?,
      reaches: json['reaches'] == null
          ? null
          : ReachesValues.fromJson(json['reaches'] as Map<String, dynamic>),
      most_played_episode: (json['most_played_episode'] as List<dynamic>?)
          ?.map((e) =>
              MostPlayedEpisodeValues.fromJson(e as Map<String, dynamic>))
          .toList(),
      audience: json['audience'] == null
          ? null
          : AudienceValues.fromJson(json['audience'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'listens': instance.listens,
      'followers': instance.followers,
      'posts': instance.posts,
      'plays': instance.plays,
      'reaches': instance.reaches,
      'most_played_episode': instance.most_played_episode,
      'audience': instance.audience,
    };

_$_ReachesValues _$$_ReachesValuesFromJson(Map<String, dynamic> json) =>
    _$_ReachesValues(
      explore: json['explore'] as int?,
      search: json['search'] as int?,
      external_links: json['external_links'] as int?,
      others: json['others'] as int?,
    );

Map<String, dynamic> _$$_ReachesValuesToJson(_$_ReachesValues instance) =>
    <String, dynamic>{
      'explore': instance.explore,
      'search': instance.search,
      'external_links': instance.external_links,
      'others': instance.others,
    };

_$_MostPlayedEpisodeValues _$$_MostPlayedEpisodeValuesFromJson(
        Map<String, dynamic> json) =>
    _$_MostPlayedEpisodeValues(
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

Map<String, dynamic> _$$_MostPlayedEpisodeValuesToJson(
        _$_MostPlayedEpisodeValues instance) =>
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

_$_AudienceValues _$$_AudienceValuesFromJson(Map<String, dynamic> json) =>
    _$_AudienceValues(
      gender: json['gender'] == null
          ? null
          : GenderValues.fromJson(json['gender'] as Map<String, dynamic>),
      age: json['age'] == null
          ? null
          : AgeValues.fromJson(json['age'] as Map<String, dynamic>),
      earnings: json['earnings'] == null
          ? null
          : EarningsValues.fromJson(json['earnings'] as Map<String, dynamic>),
      best_selling: (json['best_selling'] as List<dynamic>?)
          ?.map((e) => BestSellingData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AudienceValuesToJson(_$_AudienceValues instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'age': instance.age,
      'earnings': instance.earnings,
      'best_selling': instance.best_selling,
    };

_$_GenderValues _$$_GenderValuesFromJson(Map<String, dynamic> json) =>
    _$_GenderValues(
      male: json['male'] as int?,
      female: json['female'] as int?,
    );

Map<String, dynamic> _$$_GenderValuesToJson(_$_GenderValues instance) =>
    <String, dynamic>{
      'male': instance.male,
      'female': instance.female,
    };

_$_AgeValues _$$_AgeValuesFromJson(Map<String, dynamic> json) => _$_AgeValues(
      age_12_20: json['age_12_20'] as int?,
      age_20_30: json['age_20_30'] as int?,
      age_30_40: json['age_30_40'] as int?,
      age_40_50: json['age_40_50'] as int?,
      age_50: json['age_50'] as int?,
    );

Map<String, dynamic> _$$_AgeValuesToJson(_$_AgeValues instance) =>
    <String, dynamic>{
      'age_12_20': instance.age_12_20,
      'age_20_30': instance.age_20_30,
      'age_30_40': instance.age_30_40,
      'age_40_50': instance.age_40_50,
      'age_50': instance.age_50,
    };

_$_EarningsValues _$$_EarningsValuesFromJson(Map<String, dynamic> json) =>
    _$_EarningsValues(
      total: json['total'] as int?,
      subscription: json['subscription'] as int?,
      tracks: json['tracks'] as int?,
    );

Map<String, dynamic> _$$_EarningsValuesToJson(_$_EarningsValues instance) =>
    <String, dynamic>{
      'total': instance.total,
      'subscription': instance.subscription,
      'tracks': instance.tracks,
    };

_$_BestSellingData _$$_BestSellingDataFromJson(Map<String, dynamic> json) =>
    _$_BestSellingData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      season_id: json['season_id'] as int?,
      allow_comments: json['allow_comments'] as int?,
      allow_share: json['allow_share'] as int?,
      cover: json['cover'] as String?,
      published_at: json['published_at'] as String?,
      comments_count: json['comments_count'] as int?,
      likes_count: json['likes_count'] as int?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentsValues.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BestSellingDataToJson(_$_BestSellingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'season_id': instance.season_id,
      'allow_comments': instance.allow_comments,
      'allow_share': instance.allow_share,
      'cover': instance.cover,
      'published_at': instance.published_at,
      'comments_count': instance.comments_count,
      'likes_count': instance.likes_count,
      'comments': instance.comments,
    };
