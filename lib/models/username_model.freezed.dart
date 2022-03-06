// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'username_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsernameModel _$UsernameModelFromJson(Map<String, dynamic> json) {
  return _UsernameModel.fromJson(json);
}

/// @nodoc
class _$UsernameModelTearOff {
  const _$UsernameModelTearOff();

  _UsernameModel call({required String username}) {
    return _UsernameModel(
      username: username,
    );
  }

  UsernameModel fromJson(Map<String, Object?> json) {
    return UsernameModel.fromJson(json);
  }
}

/// @nodoc
const $UsernameModel = _$UsernameModelTearOff();

/// @nodoc
mixin _$UsernameModel {
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsernameModelCopyWith<UsernameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameModelCopyWith<$Res> {
  factory $UsernameModelCopyWith(
          UsernameModel value, $Res Function(UsernameModel) then) =
      _$UsernameModelCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UsernameModelCopyWithImpl<$Res>
    implements $UsernameModelCopyWith<$Res> {
  _$UsernameModelCopyWithImpl(this._value, this._then);

  final UsernameModel _value;
  // ignore: unused_field
  final $Res Function(UsernameModel) _then;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UsernameModelCopyWith<$Res>
    implements $UsernameModelCopyWith<$Res> {
  factory _$UsernameModelCopyWith(
          _UsernameModel value, $Res Function(_UsernameModel) then) =
      __$UsernameModelCopyWithImpl<$Res>;
  @override
  $Res call({String username});
}

/// @nodoc
class __$UsernameModelCopyWithImpl<$Res>
    extends _$UsernameModelCopyWithImpl<$Res>
    implements _$UsernameModelCopyWith<$Res> {
  __$UsernameModelCopyWithImpl(
      _UsernameModel _value, $Res Function(_UsernameModel) _then)
      : super(_value, (v) => _then(v as _UsernameModel));

  @override
  _UsernameModel get _value => super._value as _UsernameModel;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_UsernameModel(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsernameModel extends _UsernameModel with DiagnosticableTreeMixin {
  _$_UsernameModel({required this.username}) : super._();

  factory _$_UsernameModel.fromJson(Map<String, dynamic> json) =>
      _$$_UsernameModelFromJson(json);

  @override
  final String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsernameModel(username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UsernameModel'))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsernameModel &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$UsernameModelCopyWith<_UsernameModel> get copyWith =>
      __$UsernameModelCopyWithImpl<_UsernameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsernameModelToJson(this);
  }
}

abstract class _UsernameModel extends UsernameModel {
  factory _UsernameModel({required String username}) = _$_UsernameModel;
  _UsernameModel._() : super._();

  factory _UsernameModel.fromJson(Map<String, dynamic> json) =
      _$_UsernameModel.fromJson;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$UsernameModelCopyWith<_UsernameModel> get copyWith =>
      throw _privateConstructorUsedError;
}
