import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchases_response.freezed.dart';
part 'purchases_response.g.dart';

@freezed
class PurchasesModel with _$PurchasesModel {
  const PurchasesModel._();

  const factory PurchasesModel({
    final Data? data,
  }) = _PurchasesModel;

  factory PurchasesModel.fromJson(Map<String, dynamic> map) =>
      _$PurchasesModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final List<ActiveSubscriptions>? active_subscriptions,
    final List<OtherPurchases>? other_purchases,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) =>
      _$DataFromJson(json);
}

@freezed
class ActiveSubscriptions with _$ActiveSubscriptions {
  const factory ActiveSubscriptions({
    final int? Due,
    //final String? class,
    final String? Title,
    final String? icon,
  }) = _ActiveSubscriptions;

  factory ActiveSubscriptions.fromJson(final Map<String, dynamic> json) =>
      _$ActiveSubscriptionsFromJson(json);
}

@freezed
class OtherPurchases with _$OtherPurchases {
  const factory OtherPurchases({
    final int? id,
    final String? title,
    final String? cover,
    final String? created_at,
  }) = _OtherPurchases;

  factory OtherPurchases.fromJson(final Map<String, dynamic> json) =>
      _$OtherPurchasesFromJson(json);
}
