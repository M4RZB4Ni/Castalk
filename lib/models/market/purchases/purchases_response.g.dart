// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchases_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchasesModel _$$_PurchasesModelFromJson(Map<String, dynamic> json) =>
    _$_PurchasesModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PurchasesModelToJson(_$_PurchasesModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      active_subscriptions: (json['active_subscriptions'] as List<dynamic>?)
          ?.map((e) => ActiveSubscriptions.fromJson(e as Map<String, dynamic>))
          .toList(),
      other_purchases: (json['other_purchases'] as List<dynamic>?)
          ?.map((e) => OtherPurchases.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'active_subscriptions': instance.active_subscriptions,
      'other_purchases': instance.other_purchases,
    };

_$_ActiveSubscriptions _$$_ActiveSubscriptionsFromJson(
        Map<String, dynamic> json) =>
    _$_ActiveSubscriptions(
      Due: json['Due'] as int?,
      Title: json['Title'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_ActiveSubscriptionsToJson(
        _$_ActiveSubscriptions instance) =>
    <String, dynamic>{
      'Due': instance.Due,
      'Title': instance.Title,
      'icon': instance.icon,
    };

_$_OtherPurchases _$$_OtherPurchasesFromJson(Map<String, dynamic> json) =>
    _$_OtherPurchases(
      id: json['id'] as int?,
      title: json['title'] as String?,
      cover: json['cover'] as String?,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_OtherPurchasesToJson(_$_OtherPurchases instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cover': instance.cover,
      'created_at': instance.created_at,
    };
