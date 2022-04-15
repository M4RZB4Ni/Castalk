// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_entity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LikedEntityModel _$$_LikedEntityModelFromJson(Map<String, dynamic> json) =>
    _$_LikedEntityModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LikedEntityModelToJson(_$_LikedEntityModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'item': instance.item,
      'type': instance.type,
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      created_at: json['created_at'] as String?,
      cover: json['cover'] as String?,
      episode_time: json['episode_time'] as String?,
      crated_at_diff: json['crated_at_diff'] as String?,
      likes_count: json['likes_count'] as int?,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.created_at,
      'cover': instance.cover,
      'episode_time': instance.episode_time,
      'crated_at_diff': instance.crated_at_diff,
      'likes_count': instance.likes_count,
    };
