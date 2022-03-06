import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'update_profile_model.freezed.dart';
part 'update_profile_model.g.dart';

@freezed
class UpdateProfileModel with _$UpdateProfileModel{

  const UpdateProfileModel._();

  factory UpdateProfileModel({
    required String id,
  }) = _UpdateProfileModel;

  factory UpdateProfileModel.fromJson(Map<String, dynamic> map) => _$UpdateProfileModelFromJson(map);

}
