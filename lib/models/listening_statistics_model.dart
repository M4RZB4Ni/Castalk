import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'listening_statistics_model.freezed.dart';
part 'listening_statistics_model.g.dart';

@freezed
class ListeningAnalyticsModel with _$ListeningAnalyticsModel{
  const ListeningAnalyticsModel._();

  const factory ListeningAnalyticsModel({
    final Data? data,
  }) = _ListeningAnalyticsModel;

  factory ListeningAnalyticsModel.fromJson(Map<String, dynamic> map) => _$ListeningAnalyticsModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final int? total_listening_time,
    final List<int>? total_listening_time_by_week,
    final int? episodes,
    final int? your_listening_routine,
    final List<FieldOfInterest>? field_of_interest,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class FieldOfInterest with _$FieldOfInterest {
  const factory FieldOfInterest({
    final String? item,
    final int? values,
  }) = _FieldOfInterest;

  factory FieldOfInterest.fromJson(final Map<String, dynamic> json) => _$FieldOfInterestFromJson(json);
}