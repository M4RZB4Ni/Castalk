import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'withdraw_model.freezed.dart';
part 'withdraw_model.g.dart';

@freezed
class WithdrawModel with _$WithdrawModel{

  const WithdrawModel._();

  factory WithdrawModel({
    required int price,
  }) = _WithdrawModel;

  factory WithdrawModel.fromJson(Map<String, dynamic> map) => _$WithdrawModelFromJson(map);

}
