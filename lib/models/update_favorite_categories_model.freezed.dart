// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_favorite_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateFavoriteCategoriesModel _$UpdateFavoriteCategoriesModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateFavoriteCategoriesModel.fromJson(json);
}

/// @nodoc
class _$UpdateFavoriteCategoriesModelTearOff {
  const _$UpdateFavoriteCategoriesModelTearOff();

  _UpdateFavoriteCategoriesModel call({required String categories}) {
    return _UpdateFavoriteCategoriesModel(
      categories: categories,
    );
  }

  UpdateFavoriteCategoriesModel fromJson(Map<String, Object?> json) {
    return UpdateFavoriteCategoriesModel.fromJson(json);
  }
}

/// @nodoc
const $UpdateFavoriteCategoriesModel = _$UpdateFavoriteCategoriesModelTearOff();

/// @nodoc
mixin _$UpdateFavoriteCategoriesModel {
  String get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFavoriteCategoriesModelCopyWith<UpdateFavoriteCategoriesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFavoriteCategoriesModelCopyWith<$Res> {
  factory $UpdateFavoriteCategoriesModelCopyWith(
          UpdateFavoriteCategoriesModel value,
          $Res Function(UpdateFavoriteCategoriesModel) then) =
      _$UpdateFavoriteCategoriesModelCopyWithImpl<$Res>;
  $Res call({String categories});
}

/// @nodoc
class _$UpdateFavoriteCategoriesModelCopyWithImpl<$Res>
    implements $UpdateFavoriteCategoriesModelCopyWith<$Res> {
  _$UpdateFavoriteCategoriesModelCopyWithImpl(this._value, this._then);

  final UpdateFavoriteCategoriesModel _value;
  // ignore: unused_field
  final $Res Function(UpdateFavoriteCategoriesModel) _then;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateFavoriteCategoriesModelCopyWith<$Res>
    implements $UpdateFavoriteCategoriesModelCopyWith<$Res> {
  factory _$UpdateFavoriteCategoriesModelCopyWith(
          _UpdateFavoriteCategoriesModel value,
          $Res Function(_UpdateFavoriteCategoriesModel) then) =
      __$UpdateFavoriteCategoriesModelCopyWithImpl<$Res>;
  @override
  $Res call({String categories});
}

/// @nodoc
class __$UpdateFavoriteCategoriesModelCopyWithImpl<$Res>
    extends _$UpdateFavoriteCategoriesModelCopyWithImpl<$Res>
    implements _$UpdateFavoriteCategoriesModelCopyWith<$Res> {
  __$UpdateFavoriteCategoriesModelCopyWithImpl(
      _UpdateFavoriteCategoriesModel _value,
      $Res Function(_UpdateFavoriteCategoriesModel) _then)
      : super(_value, (v) => _then(v as _UpdateFavoriteCategoriesModel));

  @override
  _UpdateFavoriteCategoriesModel get _value =>
      super._value as _UpdateFavoriteCategoriesModel;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_UpdateFavoriteCategoriesModel(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateFavoriteCategoriesModel extends _UpdateFavoriteCategoriesModel
    with DiagnosticableTreeMixin {
  _$_UpdateFavoriteCategoriesModel({required this.categories}) : super._();

  factory _$_UpdateFavoriteCategoriesModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateFavoriteCategoriesModelFromJson(json);

  @override
  final String categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateFavoriteCategoriesModel(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateFavoriteCategoriesModel'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateFavoriteCategoriesModel &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$UpdateFavoriteCategoriesModelCopyWith<_UpdateFavoriteCategoriesModel>
      get copyWith => __$UpdateFavoriteCategoriesModelCopyWithImpl<
          _UpdateFavoriteCategoriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateFavoriteCategoriesModelToJson(this);
  }
}

abstract class _UpdateFavoriteCategoriesModel
    extends UpdateFavoriteCategoriesModel {
  factory _UpdateFavoriteCategoriesModel({required String categories}) =
      _$_UpdateFavoriteCategoriesModel;
  _UpdateFavoriteCategoriesModel._() : super._();

  factory _UpdateFavoriteCategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateFavoriteCategoriesModel.fromJson;

  @override
  String get categories;
  @override
  @JsonKey(ignore: true)
  _$UpdateFavoriteCategoriesModelCopyWith<_UpdateFavoriteCategoriesModel>
      get copyWith => throw _privateConstructorUsedError;
}
