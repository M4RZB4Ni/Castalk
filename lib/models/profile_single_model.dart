import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'profile_single_model.freezed.dart';
part 'profile_single_model.g.dart';

@freezed
class ProfileSingleModel with _$ProfileSingleModel{
  const ProfileSingleModel._();

  factory ProfileSingleModel({
    required int id,
    required String username,
    required String mobile,
    required String first_name,
    required String last_name,
  }) = _ProfileSingleModel;

  factory ProfileSingleModel.fromJson(Map<String, dynamic> map) => _$ProfileSingleModelFromJson(map);

}