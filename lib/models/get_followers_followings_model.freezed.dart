// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_followers_followings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetFollowersFollowingsModel _$GetFollowersFollowingsModelFromJson(
    Map<String, dynamic> json) {
  return _GetFollowersFollowingsModel.fromJson(json);
}

/// @nodoc
class _$GetFollowersFollowingsModelTearOff {
  const _$GetFollowersFollowingsModelTearOff();

  _GetFollowersFollowingsModel call({required String userid}) {
    return _GetFollowersFollowingsModel(
      userid: userid,
    );
  }

  GetFollowersFollowingsModel fromJson(Map<String, Object?> json) {
    return GetFollowersFollowingsModel.fromJson(json);
  }
}

/// @nodoc
const $GetFollowersFollowingsModel = _$GetFollowersFollowingsModelTearOff();

/// @nodoc
mixin _$GetFollowersFollowingsModel {
  String get userid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFollowersFollowingsModelCopyWith<GetFollowersFollowingsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFollowersFollowingsModelCopyWith<$Res> {
  factory $GetFollowersFollowingsModelCopyWith(
          GetFollowersFollowingsModel value,
          $Res Function(GetFollowersFollowingsModel) then) =
      _$GetFollowersFollowingsModelCopyWithImpl<$Res>;
  $Res call({String userid});
}

/// @nodoc
class _$GetFollowersFollowingsModelCopyWithImpl<$Res>
    implements $GetFollowersFollowingsModelCopyWith<$Res> {
  _$GetFollowersFollowingsModelCopyWithImpl(this._value, this._then);

  final GetFollowersFollowingsModel _value;
  // ignore: unused_field
  final $Res Function(GetFollowersFollowingsModel) _then;

  @override
  $Res call({
    Object? userid = freezed,
  }) {
    return _then(_value.copyWith(
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetFollowersFollowingsModelCopyWith<$Res>
    implements $GetFollowersFollowingsModelCopyWith<$Res> {
  factory _$GetFollowersFollowingsModelCopyWith(
          _GetFollowersFollowingsModel value,
          $Res Function(_GetFollowersFollowingsModel) then) =
      __$GetFollowersFollowingsModelCopyWithImpl<$Res>;
  @override
  $Res call({String userid});
}

/// @nodoc
class __$GetFollowersFollowingsModelCopyWithImpl<$Res>
    extends _$GetFollowersFollowingsModelCopyWithImpl<$Res>
    implements _$GetFollowersFollowingsModelCopyWith<$Res> {
  __$GetFollowersFollowingsModelCopyWithImpl(
      _GetFollowersFollowingsModel _value,
      $Res Function(_GetFollowersFollowingsModel) _then)
      : super(_value, (v) => _then(v as _GetFollowersFollowingsModel));

  @override
  _GetFollowersFollowingsModel get _value =>
      super._value as _GetFollowersFollowingsModel;

  @override
  $Res call({
    Object? userid = freezed,
  }) {
    return _then(_GetFollowersFollowingsModel(
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetFollowersFollowingsModel extends _GetFollowersFollowingsModel
    with DiagnosticableTreeMixin {
  _$_GetFollowersFollowingsModel({required this.userid}) : super._();

  factory _$_GetFollowersFollowingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetFollowersFollowingsModelFromJson(json);

  @override
  final String userid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetFollowersFollowingsModel(userid: $userid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetFollowersFollowingsModel'))
      ..add(DiagnosticsProperty('userid', userid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetFollowersFollowingsModel &&
            const DeepCollectionEquality().equals(other.userid, userid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userid));

  @JsonKey(ignore: true)
  @override
  _$GetFollowersFollowingsModelCopyWith<_GetFollowersFollowingsModel>
      get copyWith => __$GetFollowersFollowingsModelCopyWithImpl<
          _GetFollowersFollowingsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetFollowersFollowingsModelToJson(this);
  }
}

abstract class _GetFollowersFollowingsModel
    extends GetFollowersFollowingsModel {
  factory _GetFollowersFollowingsModel({required String userid}) =
      _$_GetFollowersFollowingsModel;
  _GetFollowersFollowingsModel._() : super._();

  factory _GetFollowersFollowingsModel.fromJson(Map<String, dynamic> json) =
      _$_GetFollowersFollowingsModel.fromJson;

  @override
  String get userid;
  @override
  @JsonKey(ignore: true)
  _$GetFollowersFollowingsModelCopyWith<_GetFollowersFollowingsModel>
      get copyWith => throw _privateConstructorUsedError;
}
