// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayListModel _$$_PlayListModelFromJson(Map<String, dynamic> json) =>
    _$_PlayListModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlayListModelToJson(_$_PlayListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PlayListItems.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_PlayListItems _$$_PlayListItemsFromJson(Map<String, dynamic> json) =>
    _$_PlayListItems(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_PlayListItemsToJson(_$_PlayListItems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'title': instance.title,
      'description': instance.description,
    };
