import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_comment_model.freezed.dart';
part 'create_comment_model.g.dart';

@freezed
class CreateCommentModel with _$CreateCommentModel{

  const CreateCommentModel._();

  factory CreateCommentModel({
    required int price,
  }) = _CreateCommentModel;

  factory CreateCommentModel.fromJson(Map<String, dynamic> map) => _$CreateCommentModelFromJson(map);

}
