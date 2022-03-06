// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'like_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LikeModel _$LikeModelFromJson(Map<String, dynamic> json) {
  return _LikeModel.fromJson(json);
}

/// @nodoc
class _$LikeModelTearOff {
  const _$LikeModelTearOff();

  _LikeModel call({required String seasonid}) {
    return _LikeModel(
      seasonid: seasonid,
    );
  }

  LikeModel fromJson(Map<String, Object?> json) {
    return LikeModel.fromJson(json);
  }
}

/// @nodoc
const $LikeModel = _$LikeModelTearOff();

/// @nodoc
mixin _$LikeModel {
  String get seasonid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeModelCopyWith<LikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeModelCopyWith<$Res> {
  factory $LikeModelCopyWith(LikeModel value, $Res Function(LikeModel) then) =
      _$LikeModelCopyWithImpl<$Res>;
  $Res call({String seasonid});
}

/// @nodoc
class _$LikeModelCopyWithImpl<$Res> implements $LikeModelCopyWith<$Res> {
  _$LikeModelCopyWithImpl(this._value, this._then);

  final LikeModel _value;
  // ignore: unused_field
  final $Res Function(LikeModel) _then;

  @override
  $Res call({
    Object? seasonid = freezed,
  }) {
    return _then(_value.copyWith(
      seasonid: seasonid == freezed
          ? _value.seasonid
          : seasonid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LikeModelCopyWith<$Res> implements $LikeModelCopyWith<$Res> {
  factory _$LikeModelCopyWith(
          _LikeModel value, $Res Function(_LikeModel) then) =
      __$LikeModelCopyWithImpl<$Res>;
  @override
  $Res call({String seasonid});
}

/// @nodoc
class __$LikeModelCopyWithImpl<$Res> extends _$LikeModelCopyWithImpl<$Res>
    implements _$LikeModelCopyWith<$Res> {
  __$LikeModelCopyWithImpl(_LikeModel _value, $Res Function(_LikeModel) _then)
      : super(_value, (v) => _then(v as _LikeModel));

  @override
  _LikeModel get _value => super._value as _LikeModel;

  @override
  $Res call({
    Object? seasonid = freezed,
  }) {
    return _then(_LikeModel(
      seasonid: seasonid == freezed
          ? _value.seasonid
          : seasonid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LikeModel extends _LikeModel with DiagnosticableTreeMixin {
  _$_LikeModel({required this.seasonid}) : super._();

  factory _$_LikeModel.fromJson(Map<String, dynamic> json) =>
      _$$_LikeModelFromJson(json);

  @override
  final String seasonid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LikeModel(seasonid: $seasonid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LikeModel'))
      ..add(DiagnosticsProperty('seasonid', seasonid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeModel &&
            const DeepCollectionEquality().equals(other.seasonid, seasonid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(seasonid));

  @JsonKey(ignore: true)
  @override
  _$LikeModelCopyWith<_LikeModel> get copyWith =>
      __$LikeModelCopyWithImpl<_LikeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikeModelToJson(this);
  }
}

abstract class _LikeModel extends LikeModel {
  factory _LikeModel({required String seasonid}) = _$_LikeModel;
  _LikeModel._() : super._();

  factory _LikeModel.fromJson(Map<String, dynamic> json) =
      _$_LikeModel.fromJson;

  @override
  String get seasonid;
  @override
  @JsonKey(ignore: true)
  _$LikeModelCopyWith<_LikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
