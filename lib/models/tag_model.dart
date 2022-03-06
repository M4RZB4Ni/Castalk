import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tag_model.freezed.dart';
part 'tag_model.g.dart';

@freezed
class TagModel with _$TagModel{

  const TagModel._();

  factory TagModel({
    required String id,
  }) = _TagModel;

  factory TagModel.fromJson(Map<String, dynamic> map) => _$TagModelFromJson(map);

}
