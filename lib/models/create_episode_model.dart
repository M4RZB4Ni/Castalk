import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_episode_model.freezed.dart';
part 'create_episode_model.g.dart';

@freezed
class CreateEpisodeModel with _$CreateEpisodeModel{

  const CreateEpisodeModel._();

  factory CreateEpisodeModel({
    required String name,
    required String description,
    required String season_id,
    required String allow_comments,
    required String allow_share,
    required String updated_at,
    required String created_at,
    required int comments_count,
    required int likes_count,
    required List comments,
  }) = _CreateEpisodeModel;

  factory CreateEpisodeModel.fromJson(Map<String, dynamic> map) => _$CreateEpisodeModelFromJson(map);

}