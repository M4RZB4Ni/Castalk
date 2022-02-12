import 'package:castalk/models/token_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel{

  const AuthModel._();

  factory AuthModel({
    required TokenModel? data,
    required int code,
  })= _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> map) => _$AuthModelFromJson(map);

}
