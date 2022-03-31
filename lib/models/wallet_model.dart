import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
class WalletModel with _$WalletModel{
  const WalletModel._();

  const factory WalletModel({
    final List<Data>? data,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> map) => _$WalletModelFromJson(map);
}

@freezed
class Data with _$Data {
  const factory Data({
    final int? amount,
    final String? created_at,
  }) = _Data;

  factory Data.fromJson(final Map<String, dynamic> json) => _$DataFromJson(json);
}