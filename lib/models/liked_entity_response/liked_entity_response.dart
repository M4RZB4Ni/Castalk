// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'liked_entity_response.freezed.dart';
// part 'liked_entity_response.g.dart';
//
// @freezed
// class LikedEntityModel with _$LikedEntityModel {
//   const LikedEntityModel._();
//
//   const factory LikedEntityModel({
//     final List<Item>? data,
//   }) = _LikedEntityModel;
//
//   factory LikedEntityModel.fromJson(Map<String, dynamic> map) =>
//       _$LikedEntityModelFromJson(map);
// }
//
// @freezed
// class Item with _$Item {
//   const factory Item({
//     final int? id,
//     final String? name,
//     final String? description,
//     final String? created_at,
//     final String? cover,
//     final String? episode_time,
//     final String? crated_at_diff,
//     final int? likes_count,
//   }) = _Item;
//
//   factory Item.fromJson(final Map<String, dynamic> json) =>
//       _$ItemFromJson(json);
// }
class LikedEntityModel {
  List<Data>? data;

  LikedEntityModel({this.data});

  LikedEntityModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
  List<Item>? item;
  String? type;

  Data({this.item, this.type});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['item'] != null) {
      item = <Item>[];
      json['item'].forEach((v) {
        item!.add(Item.fromJson(v));
      });
    }
    type = json['type'];
  }
}

class Item {
  int? id;
  String? name;
  String? description;
  int? seasonId;
  String? cover;
  String? publishAt;
  int? commentsCount;
  int? likesCount;
  String? episodeTime;
  String? cratedAtDiff;

  Item(
      {this.id,
      this.name,
      this.description,
      this.seasonId,
      this.cover,
      this.publishAt,
      this.commentsCount,
      this.likesCount,
      this.episodeTime,
      this.cratedAtDiff});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    seasonId = json['season_id'];
    cover = json['cover'];
    publishAt = json['publish_at'];
    commentsCount = json['comments_count'];
    likesCount = json['likes_count'];
    episodeTime = json['episode_time'];
    cratedAtDiff = json['crated_at_diff'];
  }
}
