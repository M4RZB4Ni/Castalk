import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes_response.freezed.dart';
part 'episodes_response.g.dart';

@freezed
class EpisodesModel with _$EpisodesModel {
  const EpisodesModel._();

  const factory EpisodesModel({
    final List<Data>? data,
  }) = _EpisodesModel;

  factory EpisodesModel.fromJson(Map<String, dynamic> map) =>
      _$EpisodesModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final int? id,
    final String? title,
    final String? description,
    final String? created_at,
    final List<String>? covers,
    final List<EpisodeItems>? episodes,
    final List<Tags>? tags,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) =>
      _$DataFromJson(json);
}

@freezed
class EpisodeItems with _$EpisodeItems {
  const factory EpisodeItems({
    final int? id,
    final String? name,
    final String? cover,
  }) = _EpisodeItems;

  factory EpisodeItems.fromJson(final Map<String, dynamic> json) =>
      _$EpisodeItemsFromJson(json);
}

@freezed
class Tags with _$Tags {
  const factory Tags({
    final int? id,
    final String? title,
  }) = _Tags;

  factory Tags.fromJson(final Map<String, dynamic> json) =>
      _$TagsFromJson(json);
}
