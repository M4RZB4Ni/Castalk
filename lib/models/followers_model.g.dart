// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FollowersModel _$$_FollowersModelFromJson(Map<String, dynamic> json) =>
    _$_FollowersModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FollowersModelToJson(_$_FollowersModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FollowersItems.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_FollowersItems _$$_FollowersItemsFromJson(Map<String, dynamic> json) =>
    _$_FollowersItems(
      follower_id: json['follower_id'] as int?,
      follower: json['follower'] == null
          ? null
          : FollowersValues.fromJson(json['follower'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FollowersItemsToJson(_$_FollowersItems instance) =>
    <String, dynamic>{
      'follower_id': instance.follower_id,
      'follower': instance.follower,
    };

_$_FollowersValues _$$_FollowersValuesFromJson(Map<String, dynamic> json) =>
    _$_FollowersValues(
      id: json['id'] as int?,
      username: json['username'] as String?,
      mobile: json['mobile'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
    );

Map<String, dynamic> _$$_FollowersValuesToJson(_$_FollowersValues instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'mobile': instance.mobile,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
    };
