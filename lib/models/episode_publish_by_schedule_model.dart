import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'episode_publish_by_schedule_model.freezed.dart';
part 'episode_publish_by_schedule_model.g.dart';

@freezed
class EpisodePublishByScheduleModel with _$EpisodePublishByScheduleModel{

  const EpisodePublishByScheduleModel._();

  factory EpisodePublishByScheduleModel({
    required String id,
    required String date,
  }) = _EpisodePublishByScheduleModel;

  factory EpisodePublishByScheduleModel.fromJson(Map<String, dynamic> map) => _$EpisodePublishByScheduleModelFromJson(map);

}
