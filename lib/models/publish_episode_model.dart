import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'publish_episode_model.freezed.dart';
part 'publish_episode_model.g.dart';

@freezed
class PublishEpisodeModel with _$PublishEpisodeModel{

  const PublishEpisodeModel._();

  factory PublishEpisodeModel({
    required String episodeid,
  }) = _PublishEpisodeModel;

  factory PublishEpisodeModel.fromJson(Map<String, dynamic> map) => _$PublishEpisodeModelFromJson(map);

}
