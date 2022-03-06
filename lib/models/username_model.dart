import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'username_model.freezed.dart';
part 'username_model.g.dart';

@freezed
class UsernameModel with _$UsernameModel{
  const UsernameModel._();

  factory UsernameModel({
    required String username,
  }) = _UsernameModel;

  factory UsernameModel.fromJson(Map<String, dynamic> map) => _$UsernameModelFromJson(map);
}