// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthModel _$$_AuthModelFromJson(Map<String, dynamic> json) => _$_AuthModel(
      data: json['data'] == null
          ? null
          : TokenModel.fromJson(json['data'] as Map<String, dynamic>),
      code: json['code'] as int,
    );

Map<String, dynamic> _$$_AuthModelToJson(_$_AuthModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'code': instance.code,
    };
