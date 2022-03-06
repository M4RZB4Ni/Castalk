// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'follow_unfollow_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FollowUnfollowModel _$FollowUnfollowModelFromJson(Map<String, dynamic> json) {
  return _FollowUnfollowModel.fromJson(json);
}

/// @nodoc
class _$FollowUnfollowModelTearOff {
  const _$FollowUnfollowModelTearOff();

  _FollowUnfollowModel call({required String followingid}) {
    return _FollowUnfollowModel(
      followingid: followingid,
    );
  }

  FollowUnfollowModel fromJson(Map<String, Object?> json) {
    return FollowUnfollowModel.fromJson(json);
  }
}

/// @nodoc
const $FollowUnfollowModel = _$FollowUnfollowModelTearOff();

/// @nodoc
mixin _$FollowUnfollowModel {
  String get followingid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowUnfollowModelCopyWith<FollowUnfollowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowUnfollowModelCopyWith<$Res> {
  factory $FollowUnfollowModelCopyWith(
          FollowUnfollowModel value, $Res Function(FollowUnfollowModel) then) =
      _$FollowUnfollowModelCopyWithImpl<$Res>;
  $Res call({String followingid});
}

/// @nodoc
class _$FollowUnfollowModelCopyWithImpl<$Res>
    implements $FollowUnfollowModelCopyWith<$Res> {
  _$FollowUnfollowModelCopyWithImpl(this._value, this._then);

  final FollowUnfollowModel _value;
  // ignore: unused_field
  final $Res Function(FollowUnfollowModel) _then;

  @override
  $Res call({
    Object? followingid = freezed,
  }) {
    return _then(_value.copyWith(
      followingid: followingid == freezed
          ? _value.followingid
          : followingid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FollowUnfollowModelCopyWith<$Res>
    implements $FollowUnfollowModelCopyWith<$Res> {
  factory _$FollowUnfollowModelCopyWith(_FollowUnfollowModel value,
          $Res Function(_FollowUnfollowModel) then) =
      __$FollowUnfollowModelCopyWithImpl<$Res>;
  @override
  $Res call({String followingid});
}

/// @nodoc
class __$FollowUnfollowModelCopyWithImpl<$Res>
    extends _$FollowUnfollowModelCopyWithImpl<$Res>
    implements _$FollowUnfollowModelCopyWith<$Res> {
  __$FollowUnfollowModelCopyWithImpl(
      _FollowUnfollowModel _value, $Res Function(_FollowUnfollowModel) _then)
      : super(_value, (v) => _then(v as _FollowUnfollowModel));

  @override
  _FollowUnfollowModel get _value => super._value as _FollowUnfollowModel;

  @override
  $Res call({
    Object? followingid = freezed,
  }) {
    return _then(_FollowUnfollowModel(
      followingid: followingid == freezed
          ? _value.followingid
          : followingid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowUnfollowModel extends _FollowUnfollowModel
    with DiagnosticableTreeMixin {
  _$_FollowUnfollowModel({required this.followingid}) : super._();

  factory _$_FollowUnfollowModel.fromJson(Map<String, dynamic> json) =>
      _$$_FollowUnfollowModelFromJson(json);

  @override
  final String followingid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FollowUnfollowModel(followingid: $followingid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FollowUnfollowModel'))
      ..add(DiagnosticsProperty('followingid', followingid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowUnfollowModel &&
            const DeepCollectionEquality()
                .equals(other.followingid, followingid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(followingid));

  @JsonKey(ignore: true)
  @override
  _$FollowUnfollowModelCopyWith<_FollowUnfollowModel> get copyWith =>
      __$FollowUnfollowModelCopyWithImpl<_FollowUnfollowModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowUnfollowModelToJson(this);
  }
}

abstract class _FollowUnfollowModel extends FollowUnfollowModel {
  factory _FollowUnfollowModel({required String followingid}) =
      _$_FollowUnfollowModel;
  _FollowUnfollowModel._() : super._();

  factory _FollowUnfollowModel.fromJson(Map<String, dynamic> json) =
      _$_FollowUnfollowModel.fromJson;

  @override
  String get followingid;
  @override
  @JsonKey(ignore: true)
  _$FollowUnfollowModelCopyWith<_FollowUnfollowModel> get copyWith =>
      throw _privateConstructorUsedError;
}
