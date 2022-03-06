import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_season_model.freezed.dart';
part 'create_season_model.g.dart';

@freezed
class CreateSeasonModel with _$CreateSeasonModel{

  const CreateSeasonModel._();

  factory CreateSeasonModel({
    required String title,
    required String description,
    required String podcastId,
    required String imageID,
  }) = _CreateSeasonModel;

  factory CreateSeasonModel.fromJson(Map<String, dynamic> map) => _$CreateSeasonModelFromJson(map);

}