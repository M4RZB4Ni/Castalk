import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'followers_model.freezed.dart';
part 'followers_model.g.dart';

@freezed
class FollowersModel with _$FollowersModel{
  const FollowersModel._();

  const factory FollowersModel({
    final Data? data,
  }) = _FollowersModel;

  factory FollowersModel.fromJson(Map<String, dynamic> map) => _$FollowersModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final List<FollowersItems>? data,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class FollowersItems with _$FollowersItems {
  const factory FollowersItems({
    final int? id,
    final FollowersValues? followersData,
  }) = _FollowersItems;

  factory FollowersItems.fromJson(final Map<String, dynamic> json) => _$FollowersItemsFromJson(json);
}

@freezed
class FollowersValues with _$FollowersValues {
  const factory FollowersValues({
    final int? id,
    final String? username,
    final String? mobile,
    final String? first_name,
    final String? last_name,
  }) = _FollowersValues;

  factory FollowersValues.fromJson(final Map<String, dynamic> json) => _$FollowersValuesFromJson(json);
}