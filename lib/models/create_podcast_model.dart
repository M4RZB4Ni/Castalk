import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_podcast_model.freezed.dart';
part 'create_podcast_model.g.dart';

@freezed
class CreatePodcastModel with _$CreatePodcastModel{

  const CreatePodcastModel._();

  factory CreatePodcastModel({
    required String title,
    required String description,
    required String category,
    required String imageID,
  }) = _CreatePodcastModel;

  factory CreatePodcastModel.fromJson(Map<String, dynamic> map) => _$CreatePodcastModelFromJson(map);

}
