import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel{
  const LoginModel._();

  factory LoginModel({
    required String mobile,
    required String password,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> map) => _$LoginModelFromJson(map);


}