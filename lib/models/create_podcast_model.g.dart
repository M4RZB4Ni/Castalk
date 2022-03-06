// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_podcast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatePodcastModel _$$_CreatePodcastModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreatePodcastModel(
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      imageID: json['imageID'] as String,
    );

Map<String, dynamic> _$$_CreatePodcastModelToJson(
        _$_CreatePodcastModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'imageID': instance.imageID,
    };
