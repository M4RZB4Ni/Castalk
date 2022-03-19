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
  }) = _PlayListItems;

  factory PlayListItems.fromJson(final Map<String, dynamic> json) => _$PlayListItemsFromJson(json);
}