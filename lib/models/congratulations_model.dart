import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'congratulations_model.freezed.dart';
part 'congratulations_model.g.dart';

@freezed
class CongratulationsModel with _$CongratulationsModel{

  const CongratulationsModel._();

  factory CongratulationsModel({
    required int id,
    required String title,
  }) = _CongratulationsModel;

  factory CongratulationsModel.fromJson(Map<String, dynamic> map) => _$CongratulationsModelFromJson(map);

}
