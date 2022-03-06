import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'episode_unpublish_model.freezed.dart';
part 'episode_unpublish_model.g.dart';

@freezed
class EpisodeUnPublishModel with _$EpisodeUnPublishModel{

  const EpisodeUnPublishModel._();

  factory EpisodeUnPublishModel({
    required String episodeid,
  }) = _EpisodeUnPublishModel;

  factory EpisodeUnPublishModel.fromJson(Map<String, dynamic> map) => _$EpisodeUnPublishModelFromJson(map);

}
