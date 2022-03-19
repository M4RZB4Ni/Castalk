// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_single_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileSingleModel _$$_ProfileSingleModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileSingleModel(
      id: json['id'] as int,
      username: json['username'] as String,
      mobile: json['mobile'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
    );

Map<String, dynamic> _$$_ProfileSingleModelToJson(
        _$_ProfileSingleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'mobile': instance.mobile,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
    };
