import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_list_model.freezed.dart';
part 'user_list_model.g.dart';

@freezed
class UserListModel with _$UserListModel{
  const UserListModel._();

  const factory UserListModel({
    final List<UserListItems>? data,
  }) = _UserListModel;

  factory UserListModel.fromJson(Map<String, dynamic> map) => _$UserListModelFromJson(map);
}

@freezed
class UserListItems with _$UserListItems {
  const factory UserListItems({
    required int? id,
    required int? category_id,
    required String? title,
    required String? cover,
    required String? description,
    required int? user_id,
    required int? covers,
    final UserValues? user,
    required int? likes_count,
    final List<SeasonValues>? seasons,
    final List<CommentsValues>? comments,
  }) = _UserListItems;

  factory UserListItems.fromJson(final Map<String, dynamic> json) => _$UserListItemsFromJson(json);
}

@freezed
class UserValues with _$UserValues {
  const factory UserValues({
    required int? id,
    required String? username,
    required String? mobile,
    required String? first_name,
    required String? last_name,
    final UserProfileItems? user_profile,
  }) = _UserValues;

  factory UserValues.fromJson(final Map<String, dynamic> json) => _$UserValuesFromJson(json);
}

@freezed
class SeasonValues with _$SeasonValues {
  const factory SeasonValues({
    required int? id,
    required String? name,
    required String? description,
    required int? podcast_id,
    required String? cover,
    final PodcastValues? podcast,
    required int? likes_count,
    final List<CommentsValues>? comments,
    final List<EpicodesValues>? episodes,
  }) = _SeasonValues;

  factory SeasonValues.fromJson(final Map<String, dynamic> json) => _$SeasonValuesFromJson(json);
}

@freezed
class CommentsValues with _$CommentsValues {
  const factory CommentsValues({
    required int? id,
    required int? owner_id,
    required String? creator_type,
    required int? creator_id,
    required String? message,
    required String? reply_to,
    required int? time,
  }) = _CommentsValues;

  factory CommentsValues.fromJson(final Map<String, dynamic> json) => _$CommentsValuesFromJson(json);
}

@freezed
class EpicodesValues with _$EpicodesValues {
  const factory EpicodesValues({
    required int? id,
    required String? name,
    required String? description,
    required int? season_id,
    required int? allow_comments,
    required int? allow_share,
    required String? cover,
    required int? comments_count,
    required int? likes_count,
    final List<CommentsValues>? comments,
  }) = _EpicodesValues;

  factory EpicodesValues.fromJson(final Map<String, dynamic> json) => _$EpicodesValuesFromJson(json);
}

@freezed
class PodcastValues with _$PodcastValues {
  const factory PodcastValues({
    required int? id,
    required int? category_id,
    required String? title,
    required String? cover,
    required String? description,
    required int? user_id,
    required int? covers,
    required int? likes_count,
  }) = _PodcastValues;

  factory PodcastValues.fromJson(final Map<String, dynamic> json) => _$PodcastValuesFromJson(json);
}

@freezed
class UserProfileItems with _$UserProfileItems {
  const factory UserProfileItems({
    required String? first_name,
    required String? last_name,
    required String? full_name,
    required String? name,
    required String? birthday,
    required String? gender,
    required String? favorite_categories,
  }) = _UserProfileItems;

  factory UserProfileItems.fromJson(final Map<String, dynamic> json) => _$UserProfileItemsFromJson(json);
}