import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'intro_model.freezed.dart';
part 'intro_model.g.dart';

@freezed
class IntroModel with _$IntroModel{
  const IntroModel._();

   factory IntroModel({
        required int id,
        required String title,
        required String description,
        required String path1,
        required String path2,
        required String path3,
        required String path4,
        required int is_active,
}) = _IntroModel;

  factory IntroModel.fromJson(Map<String, dynamic> map) => _$IntroModelFromJson(map);


}