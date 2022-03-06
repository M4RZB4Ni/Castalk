import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'retrive_file_model.freezed.dart';
part 'retrive_file_model.g.dart';

@freezed
class RetriveFileModel with _$RetriveFileModel{

  const RetriveFileModel._();

  factory RetriveFileModel({
    required String id,
  }) = _RetriveFileModel;

  factory RetriveFileModel.fromJson(Map<String, dynamic> map) => _$RetriveFileModelFromJson(map);

}
