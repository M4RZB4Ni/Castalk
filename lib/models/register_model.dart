import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel{
  const RegisterModel._();

  factory RegisterModel({
    required String mobile,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> map) => _$RegisterModelFromJson(map);
}