import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'get_followers_followings_model.freezed.dart';
part 'get_followers_followings_model.g.dart';

@freezed
class GetFollowersFollowingsModel with _$GetFollowersFollowingsModel{

  const GetFollowersFollowingsModel._();

  factory GetFollowersFollowingsModel({
    required String userid,
  }) = _GetFollowersFollowingsModel;

  factory GetFollowersFollowingsModel.fromJson(Map<String, dynamic> map) => _$GetFollowersFollowingsModelFromJson(map);

}