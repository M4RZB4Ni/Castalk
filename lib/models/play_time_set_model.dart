import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'play_time_set_model.freezed.dart';
part 'play_time_set_model.g.dart';

@freezed
class PlayTimeSetModel with _$PlayTimeSetModel{

  const PlayTimeSetModel._();

  factory PlayTimeSetModel({
    required int seconds,
    required String episodeid,
  }) = _PlayTimeSetModel;

  factory PlayTimeSetModel.fromJson(Map<String, dynamic> map) => _$PlayTimeSetModelFromJson(map);

}
