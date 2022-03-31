import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'analytics_model.freezed.dart';
part 'analytics_model.g.dart';

@freezed
class AnalyticsModel with _$AnalyticsModel{
  const AnalyticsModel._();

  const factory AnalyticsModel({
    final Data? data,
  }) = _AnalyticsModel;

  factory AnalyticsModel.fromJson(Map<String, dynamic> map) => _$AnalyticsModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final int? listens,
    final int? followers,
    final int? posts,
    final int? plays,
    final ReachesValues? reaches,
    final List<MostPlayedEpisodeValues>? most_played_episode,
    final AudienceValues? audience,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ReachesValues with _$ReachesValues {
  const factory ReachesValues({
    final int? explore,
    final int? search,
    final int? external_links,
    final int? others,
  }) = _ReachesValues;

  factory ReachesValues.fromJson(final Map<String, dynamic> json) => _$ReachesValuesFromJson(json);
}

@freezed
class MostPlayedEpisodeValues with _$MostPlayedEpisodeValues {
  const factory MostPlayedEpisodeValues({
    final int? id,
    final String? name,
    final String? description,
    final int? season_id,
    final int? allow_comments,
    final int? allow_share,
    final String? cover,
    final int? comments_count,
    final int? likes_count,
    final List<CommentsValues>? comments,
  }) = _MostPlayedEpisodeValues;

  factory MostPlayedEpisodeValues.fromJson(final Map<String, dynamic> json) => _$MostPlayedEpisodeValuesFromJson(json);
}

@freezed
class CommentsValues with _$CommentsValues {
  const factory CommentsValues({
    final int? id,
    final int? owner_id,
    final String? creator_type,
    final int? creator_id,
    final String? message,
    final String? reply_to,
    final int? time,
  }) = _CommentsValues;

  factory CommentsValues.fromJson(final Map<String, dynamic> json) => _$CommentsValuesFromJson(json);
}

@freezed
class AudienceValues with _$AudienceValues {
  const factory AudienceValues({
    final GenderValues? gender,
    final AgeValues? age,
    final EarningsValues? earnings,
    final List<BestSellingData>? best_selling,
  }) = _AudienceValues;

  factory AudienceValues.fromJson(final Map<String, dynamic> json) => _$AudienceValuesFromJson(json);
}

@freezed
class GenderValues with _$GenderValues {
  const factory GenderValues({
    final int? male,
    final int? female,
  }) = _GenderValues;

  factory GenderValues.fromJson(final Map<String, dynamic> json) => _$GenderValuesFromJson(json);
}

@freezed
class AgeValues with _$AgeValues {
  const factory AgeValues({
    final int? age_12_20,
    final int? age_20_30,
    final int? age_30_40,
    final int? age_40_50,
    final int? age_50,
  }) = _AgeValues;

  factory AgeValues.fromJson(final Map<String, dynamic> json) => _$AgeValuesFromJson(json);
}

@freezed
class EarningsValues with _$EarningsValues {
  const factory EarningsValues({
    final int? total,
    final int? subscription,
    final int? tracks,
  }) = _EarningsValues;

  factory EarningsValues.fromJson(final Map<String, dynamic> json) => _$EarningsValuesFromJson(json);
}

@freezed
class BestSellingData with _$BestSellingData {
  const factory BestSellingData({
    final int? id,
    final String? name,
    final String? description,
    final int? season_id,
    final int? allow_comments,
    final int? allow_share,
    final String? cover,
    final String? published_at,
    final int? comments_count,
    final int? likes_count,
    final List<CommentsValues>? comments,
  }) = _BestSellingData;

  factory BestSellingData.fromJson(final Map<String, dynamic> json) => _$BestSellingDataFromJson(json);
}
