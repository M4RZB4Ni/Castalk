// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_single_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileSingleModel _$ProfileSingleModelFromJson(Map<String, dynamic> json) {
  return _ProfileSingleModel.fromJson(json);
}

/// @nodoc
class _$ProfileSingleModelTearOff {
  const _$ProfileSingleModelTearOff();

  _ProfileSingleModel call(
      {required int id,
      required String username,
      required String mobile,
      required String first_name,
      required String last_name}) {
    return _ProfileSingleModel(
      id: id,
      username: username,
      mobile: mobile,
      first_name: first_name,
      last_name: last_name,
    );
  }

  ProfileSingleModel fromJson(Map<String, Object?> json) {
    return ProfileSingleModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileSingleModel = _$ProfileSingleModelTearOff();

/// @nodoc
mixin _$ProfileSingleModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileSingleModelCopyWith<ProfileSingleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSingleModelCopyWith<$Res> {
  factory $ProfileSingleModelCopyWith(
          ProfileSingleModel value, $Res Function(ProfileSingleModel) then) =
      _$ProfileSingleModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String mobile,
      String first_name,
      String last_name});
}

/// @nodoc
class _$ProfileSingleModelCopyWithImpl<$Res>
    implements $ProfileSingleModelCopyWith<$Res> {
  _$ProfileSingleModelCopyWithImpl(this._value, this._then);

  final ProfileSingleModel _value;
  // ignore: unused_field
  final $Res Function(ProfileSingleModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? mobile = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileSingleModelCopyWith<$Res>
    implements $ProfileSingleModelCopyWith<$Res> {
  factory _$ProfileSingleModelCopyWith(
          _ProfileSingleModel value, $Res Function(_ProfileSingleModel) then) =
      __$ProfileSingleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String mobile,
      String first_name,
      String last_name});
}

/// @nodoc
class __$ProfileSingleModelCopyWithImpl<$Res>
    extends _$ProfileSingleModelCopyWithImpl<$Res>
    implements _$ProfileSingleModelCopyWith<$Res> {
  __$ProfileSingleModelCopyWithImpl(
      _ProfileSingleModel _value, $Res Function(_ProfileSingleModel) _then)
      : super(_value, (v) => _then(v as _ProfileSingleModel));

  @override
  _ProfileSingleModel get _value => super._value as _ProfileSingleModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? mobile = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
  }) {
    return _then(_ProfileSingleModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileSingleModel extends _ProfileSingleModel
    with DiagnosticableTreeMixin {
  _$_ProfileSingleModel(
      {required this.id,
      required this.username,
      required this.mobile,
      required this.first_name,
      required this.last_name})
      : super._();

  factory _$_ProfileSingleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileSingleModelFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String mobile;
  @override
  final String first_name;
  @override
  final String last_name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileSingleModel(id: $id, username: $username, mobile: $mobile, first_name: $first_name, last_name: $last_name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileSingleModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('mobile', mobile))
      ..add(DiagnosticsProperty('first_name', first_name))
      ..add(DiagnosticsProperty('last_name', last_name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileSingleModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.mobile, mobile) &&
            const DeepCollectionEquality()
                .equals(other.first_name, first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(mobile),
      const DeepCollectionEquality().hash(first_name),
      const DeepCollectionEquality().hash(last_name));

  @JsonKey(ignore: true)
  @override
  _$ProfileSingleModelCopyWith<_ProfileSingleModel> get copyWith =>
      __$ProfileSingleModelCopyWithImpl<_ProfileSingleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileSingleModelToJson(this);
  }
}

abstract class _ProfileSingleModel extends ProfileSingleModel {
  factory _ProfileSingleModel(
      {required int id,
      required String username,
      required String mobile,
      required String first_name,
      required String last_name}) = _$_ProfileSingleModel;
  _ProfileSingleModel._() : super._();

  factory _ProfileSingleModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileSingleModel.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get mobile;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  @JsonKey(ignore: true)
  _$ProfileSingleModelCopyWith<_ProfileSingleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
