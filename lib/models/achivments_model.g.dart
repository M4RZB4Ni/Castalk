// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achivments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AchivmentsModel _$$_AchivmentsModelFromJson(Map<String, dynamic> json) =>
    _$_AchivmentsModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AchivmentsModelToJson(_$_AchivmentsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      pending: (json['pending'] as List<dynamic>?)
          ?.map((e) => Pending.fromJson(e as Map<String, dynamic>))
          .toList(),
      done: (json['done'] as List<dynamic>?)
          ?.map((e) => Done.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'pending': instance.pending,
      'done': instance.done,
    };

_$_Done _$$_DoneFromJson(Map<String, dynamic> json) => _$_Done(
      id: json['id'] as int?,
      progress: json['progress'] as int?,
      target: json['target'] as int?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_DoneToJson(_$_Done instance) => <String, dynamic>{
      'id': instance.id,
      'progress': instance.progress,
      'target': instance.target,
      'description': instance.description,
      'icon': instance.icon,
    };

_$_Pending _$$_PendingFromJson(Map<String, dynamic> json) => _$_Pending(
      id: json['id'] as int?,
      progress: json['progress'] as int?,
      target: json['target'] as int?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_PendingToJson(_$_Pending instance) =>
    <String, dynamic>{
      'id': instance.id,
      'progress': instance.progress,
      'target': instance.target,
      'description': instance.description,
      'icon': instance.icon,
    };
