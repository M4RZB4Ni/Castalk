import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'update_favorite_categories_model.freezed.dart';
part 'update_favorite_categories_model.g.dart';

@freezed
class UpdateFavoriteCategoriesModel with _$UpdateFavoriteCategoriesModel{

  const UpdateFavoriteCategoriesModel._();

  factory UpdateFavoriteCategoriesModel({
    required String categories,
  }) = _UpdateFavoriteCategoriesModel;

  factory UpdateFavoriteCategoriesModel.fromJson(Map<String, dynamic> map) => _$UpdateFavoriteCategoriesModelFromJson(map);

}
