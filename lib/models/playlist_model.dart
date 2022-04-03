import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'playlist_model.freezed.dart';
part 'playlist_model.g.dart';

@freezed
class PlayListModel with _$PlayListModel{
  const PlayListModel._();

  const factory PlayListModel({
    final Data? data,
  }) = _PlayListModel;

  factory PlayListModel.fromJson(Map<String, dynamic> map) => _$PlayListModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final List<PlayListItems>? data,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class PlayListItems with _$PlayListItems {
  const factory PlayListItems({
    final int? id,
    final int? user_id,
    final String? title,
    final String? description,
    final List<EpisodeItems>? episodes,
  }) = _PlayListItems;

  factory PlayListItems.fromJson(final Map<String, dynamic> json) => _$PlayListItemsFromJson(json);
}

@freezed
class EpisodeItems with _$EpisodeItems {
  const factory EpisodeItems({
    final int? id,
    final String? name,
    final String? description,
    final int? season_id,
    final int? allow_comments,
    final int? allow_share,
    final int? comments_count,
    final int? likes_count,
    final PodcastValues? podcast,
    final SeasonValues? season,
    final List<CommentsValues>? comments,
  }) = _EpisodeItems;

  factory EpisodeItems.fromJson(final Map<String, dynamic> json) => _$EpisodeItemsFromJson(json);
}

@freezed
class PodcastValues with _$PodcastValues {
  const factory PodcastValues({
    final int? id,
    final int? category_id,
    final String? title,
    final String? cover,
    final String? description,
    final int? user_id,
    final int? covers,
    final int? likes_count,
  }) = _PodcastValues;

  factory PodcastValues.fromJson(final Map<String, dynamic> json) => _$PodcastValuesFromJson(json);
}

@freezed
class SeasonValues with _$SeasonValues {
  const factory SeasonValues({
    final int? id,
    final String? name,
    final String? description,
    final int? podcast_id,
    final String? cover,
    final PodcastValues? podcast,
    final int? likes_count,
    final List<CommentsValues>? comments,
    final List<EpicodesValues>? episodes,
  }) = _SeasonValues;

  factory SeasonValues.fromJson(final Map<String, dynamic> json) => _$SeasonValuesFromJson(json);
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
class EpicodesValues with _$EpicodesValues {
  const factory EpicodesValues({
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
  }) = _EpicodesValues;

  factory EpicodesValues.fromJson(final Map<String, dynamic> json) => _$EpicodesValuesFromJson(json);
}