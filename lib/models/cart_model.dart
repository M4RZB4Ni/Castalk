import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel{

  const CartModel._();

  factory CartModel({
    required String id,
    required String podcast,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> map) => _$CartModelFromJson(map);

}
