import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'achivments_model.freezed.dart';
part 'achivments_model.g.dart';

@freezed
class AchivmentsModel with _$AchivmentsModel{
  const AchivmentsModel._();

  const factory AchivmentsModel({
    final List<Data>? data,
  }) = _AchivmentsModel;

  factory AchivmentsModel.fromJson(Map<String, dynamic> map) => _$AchivmentsModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final int? id,
    final int? progress,
    final int? target,
    //final String? class,
    final String? created_at,
    final String? updated_at,
    final int? user_id,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) => _$DataFromJson(json);
}