import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_episode_model.freezed.dart';
part 'create_episode_model.g.dart';

@freezed
class CreateEpisodeModel with _$CreateEpisodeModel{

  const CreateEpisodeModel._();

  factory CreateEpisodeModel({
    required String title,
    required String description,
    required String podcastId,
    required String seasonId,
    required String imageID,
    required bool allowShare,
    required bool allowComments,
    required String fileID,
  }) = _CreateEpisodeModel;

  factory CreateEpisodeModel.fromJson(Map<String, dynamic> map) => _$CreateEpisodeModelFromJson(map);

}