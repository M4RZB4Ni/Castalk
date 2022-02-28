// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IntroModel _$$_IntroModelFromJson(Map<String, dynamic> json) =>
    _$_IntroModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      path1: json['path1'] ?? '',
      path2: json['path2'] ?? '',
      path3: json['path3'] ?? '',
      path4: json['path4'] ?? '',
      is_active: json['is_active'] as int,
    );

Map<String, dynamic> _$$_IntroModelToJson(_$_IntroModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'path1': instance.path1,
      'path2': instance.path2,
      'path3': instance.path3,
      'path4': instance.path4,
      'is_active': instance.is_active,
    };
