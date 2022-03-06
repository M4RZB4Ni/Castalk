import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'follow_unfollow_model.freezed.dart';
part 'follow_unfollow_model.g.dart';

@freezed
class FollowUnfollowModel with _$FollowUnfollowModel{

  const FollowUnfollowModel._();

  factory FollowUnfollowModel({
    required String followingid,
  }) = _FollowUnfollowModel;

  factory FollowUnfollowModel.fromJson(Map<String, dynamic> map) => _$FollowUnfollowModelFromJson(map);

}