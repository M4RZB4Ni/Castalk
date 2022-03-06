import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'record_create_model.freezed.dart';
part 'record_create_model.g.dart';

@freezed
class RecordCreateModel with _$RecordCreateModel{

  const RecordCreateModel._();

  factory RecordCreateModel({
    required String id,
  }) = _RecordCreateModel;

  factory RecordCreateModel.fromJson(Map<String, dynamic> map) => _$RecordCreateModelFromJson(map);

}
