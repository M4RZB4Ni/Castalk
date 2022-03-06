import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'like_model.freezed.dart';
part 'like_model.g.dart';

@freezed
class LikeModel with _$LikeModel{

  const LikeModel._();

  factory LikeModel({
    required String seasonid,
  }) = _LikeModel;

  factory LikeModel.fromJson(Map<String, dynamic> map) => _$LikeModelFromJson(map);

}
