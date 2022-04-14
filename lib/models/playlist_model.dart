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
    final List<Playlists>? playlists,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Playlists with _$Playlists {
  const factory Playlists({
    final int? id,
    final String? title,
    final String? description,
    final String? created_at,
    final List<String>? covers,
    final List<EpisodeItems>? episodes,
    final List<Tags>? tags,
  }) = _Playlists;

  factory Playlists.fromJson(final Map<String, dynamic> json) => _$PlaylistsFromJson(json);
}

@freezed
class EpisodeItems with _$EpisodeItems {
  const factory EpisodeItems({
    final int? id,
    final String? name,
    final String? cover,

  }) = _EpisodeItems;

  factory EpisodeItems.fromJson(final Map<String, dynamic> json) => _$EpisodeItemsFromJson(json);
}


@freezed
class Tags with _$Tags {
  const factory Tags({
    final int? id,
    final String? title,

  }) = _Tags;

  factory Tags.fromJson(final Map<String, dynamic> json) => _$TagsFromJson(json);
}


