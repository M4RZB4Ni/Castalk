// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achivments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AchivmentsModel _$$_AchivmentsModelFromJson(Map<String, dynamic> json) =>
    _$_AchivmentsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AchivmentsModelToJson(_$_AchivmentsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as int?,
      progress: json['progress'] as int?,
      target: json['target'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      user_id: json['user_id'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'progress': instance.progress,
      'target': instance.target,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'user_id': instance.user_id,
    };
