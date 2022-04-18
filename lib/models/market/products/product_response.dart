import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    final Data? data,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> map) =>
      _$ProductModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final List<Podcast>? podcasts,
    final List<Episode>? episodes,
    final List<Season>? seasons,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) =>
      _$DataFromJson(json);
}

@freezed
class Podcast with _$Podcast {
  const factory Podcast({
    final int? id,
    final String? title,
    final String? cover,
    final String? created_at,
  }) = _Podcast;

  factory Podcast.fromJson(final Map<String, dynamic> json) =>
      _$PodcastFromJson(json);
}

@freezed
class Episode with _$Episode {
  const factory Episode({
    final int? id,
    final int? likes,
    final bool? is_liked,
    final String? name,
    final String? cover,
    final String? created_at,
    final String? created_at_diff,
    final String? episode_time,
  }) = _Episode;

  factory Episode.fromJson(final Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}

@freezed
class Season with _$Season {
  const factory Season({
    final int? id,
    final String? name,
    final String? cover,
  }) = _Season;

  factory Season.fromJson(final Map<String, dynamic> json) =>
      _$SeasonFromJson(json);
}


