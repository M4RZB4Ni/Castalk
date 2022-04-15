import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'achivments_model.freezed.dart';
part 'achivments_model.g.dart';

@freezed
class AchivmentsModel with _$AchivmentsModel {
  const AchivmentsModel._();

  const factory AchivmentsModel({
    final Data? data,
  }) = _AchivmentsModel;

  factory AchivmentsModel.fromJson(Map<String, dynamic> map) =>
      _$AchivmentsModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final List<Pending>? pending,
    final List<Done>? done,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) =>
      _$DataFromJson(json);
}

@freezed
class Done with _$Done {
  const factory Done({
    final int? id,
    final int? progress,
    final int? target,
    //final String? class,
    final String? description,
    final String? icon,
  }) = _Done;

  factory Done.fromJson(final Map<String, dynamic> json) =>
      _$DoneFromJson(json);
}

@freezed
class Pending with _$Pending {
  const factory Pending({
    final int? id,
    final int? progress,
    final int? target,
    //final String? class,
    final String? description,
    final String? icon,
  }) = _Pending;

  factory Pending.fromJson(final Map<String, dynamic> json) =>
      _$PendingFromJson(json);
}
