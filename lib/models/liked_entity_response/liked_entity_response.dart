import 'package:freezed_annotation/freezed_annotation.dart';

part 'liked_entity_response.freezed.dart';
part 'liked_entity_response.g.dart';

@freezed
class LikedEntityModel with _$LikedEntityModel {
  const LikedEntityModel._();

  const factory LikedEntityModel({
    final List<Data>? data,
  }) = _LikedEntityModel;

  factory LikedEntityModel.fromJson(Map<String, dynamic> map) =>
      _$LikedEntityModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final List<Item>? item,
    final String? type,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) =>
      _$DataFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    final int? id,
    final String? name,
    final String? description,
    final String? created_at,
    final String? cover,
    final String? episode_time,
    final String? crated_at_diff,
    final int? likes_count,
  }) = _Item;

  factory Item.fromJson(final Map<String, dynamic> json) =>
      _$ItemFromJson(json);
}
