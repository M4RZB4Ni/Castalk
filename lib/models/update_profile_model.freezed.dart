// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProfileModel _$UpdateProfileModelFromJson(Map<String, dynamic> json) {
  return _UpdateProfileModel.fromJson(json);
}

/// @nodoc
class _$UpdateProfileModelTearOff {
  const _$UpdateProfileModelTearOff();

  _UpdateProfileModel call({required String id}) {
    return _UpdateProfileModel(
      id: id,
    );
  }

  UpdateProfileModel fromJson(Map<String, Object?> json) {
    return UpdateProfileModel.fromJson(json);
  }
}

/// @nodoc
const $UpdateProfileModel = _$UpdateProfileModelTearOff();

/// @nodoc
mixin _$UpdateProfileModel {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileModelCopyWith<UpdateProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileModelCopyWith<$Res> {
  factory $UpdateProfileModelCopyWith(
          UpdateProfileModel value, $Res Function(UpdateProfileModel) then) =
      _$UpdateProfileModelCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$UpdateProfileModelCopyWithImpl<$Res>
    implements $UpdateProfileModelCopyWith<$Res> {
  _$UpdateProfileModelCopyWithImpl(this._value, this._then);

  final UpdateProfileModel _value;
  // ignore: unused_field
  final $Res Function(UpdateProfileModel) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateProfileModelCopyWith<$Res>
    implements $UpdateProfileModelCopyWith<$Res> {
  factory _$UpdateProfileModelCopyWith(
          _UpdateProfileModel value, $Res Function(_UpdateProfileModel) then) =
      __$UpdateProfileModelCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$UpdateProfileModelCopyWithImpl<$Res>
    extends _$UpdateProfileModelCopyWithImpl<$Res>
    implements _$UpdateProfileModelCopyWith<$Res> {
  __$UpdateProfileModelCopyWithImpl(
      _UpdateProfileModel _value, $Res Function(_UpdateProfileModel) _then)
      : super(_value, (v) => _then(v as _UpdateProfileModel));

  @override
  _UpdateProfileModel get _value => super._value as _UpdateProfileModel;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_UpdateProfileModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateProfileModel extends _UpdateProfileModel
    with DiagnosticableTreeMixin {
  _$_UpdateProfileModel({required this.id}) : super._();

  factory _$_UpdateProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateProfileModelFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProfileModel(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProfileModel'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfileModel &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$UpdateProfileModelCopyWith<_UpdateProfileModel> get copyWith =>
      __$UpdateProfileModelCopyWithImpl<_UpdateProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProfileModelToJson(this);
  }
}

abstract class _UpdateProfileModel extends UpdateProfileModel {
  factory _UpdateProfileModel({required String id}) = _$_UpdateProfileModel;
  _UpdateProfileModel._() : super._();

  factory _UpdateProfileModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateProfileModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$UpdateProfileModelCopyWith<_UpdateProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
