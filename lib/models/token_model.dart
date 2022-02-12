import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'token_model.freezed.dart';
part 'token_model.g.dart';

@freezed
class TokenModel with _$TokenModel{

  const TokenModel._();

  factory TokenModel({
    required String accessToken,
    required String tokenType,
    required int expiresIn,
})=_TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> map) => _$TokenModelFromJson(map);

}
