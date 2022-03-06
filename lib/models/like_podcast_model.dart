import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'like_podcast_model.freezed.dart';
part 'like_podcast_model.g.dart';

@freezed
class LikePodcastModel with _$LikePodcastModel{

  const LikePodcastModel._();

  factory LikePodcastModel({
    required String podcastid,
  }) = _LikePodcastModel;

  factory LikePodcastModel.fromJson(Map<String, dynamic> map) => _$LikePodcastModelFromJson(map);

}
