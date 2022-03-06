// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'play_time_set_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayTimeSetModel _$PlayTimeSetModelFromJson(Map<String, dynamic> json) {
  return _PlayTimeSetModel.fromJson(json);
}

/// @nodoc
class _$PlayTimeSetModelTearOff {
  const _$PlayTimeSetModelTearOff();

  _PlayTimeSetModel call({required int seconds, required String episodeid}) {
    return _PlayTimeSetModel(
      seconds: seconds,
      episodeid: episodeid,
    );
  }

  PlayTimeSetModel fromJson(Map<String, Object?> json) {
    return PlayTimeSetModel.fromJson(json);
  }
}

/// @nodoc
const $PlayTimeSetModel = _$PlayTimeSetModelTearOff();

/// @nodoc
mixin _$PlayTimeSetModel {
  int get seconds => throw _privateConstructorUsedError;
  String get episodeid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayTimeSetModelCopyWith<PlayTimeSetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayTimeSetModelCopyWith<$Res> {
  factory $PlayTimeSetModelCopyWith(
          PlayTimeSetModel value, $Res Function(PlayTimeSetModel) then) =
      _$PlayTimeSetModelCopyWithImpl<$Res>;
  $Res call({int seconds, String episodeid});
}

/// @nodoc
class _$PlayTimeSetModelCopyWithImpl<$Res>
    implements $PlayTimeSetModelCopyWith<$Res> {
  _$PlayTimeSetModelCopyWithImpl(this._value, this._then);

  final PlayTimeSetModel _value;
  // ignore: unused_field
  final $Res Function(PlayTimeSetModel) _then;

  @override
  $Res call({
    Object? seconds = freezed,
    Object? episodeid = freezed,
  }) {
    return _then(_value.copyWith(
      seconds: seconds == freezed
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      episodeid: episodeid == freezed
          ? _value.episodeid
          : episodeid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PlayTimeSetModelCopyWith<$Res>
    implements $PlayTimeSetModelCopyWith<$Res> {
  factory _$PlayTimeSetModelCopyWith(
          _PlayTimeSetModel value, $Res Function(_PlayTimeSetModel) then) =
      __$PlayTimeSetModelCopyWithImpl<$Res>;
  @override
  $Res call({int seconds, String episodeid});
}

/// @nodoc
class __$PlayTimeSetModelCopyWithImpl<$Res>
    extends _$PlayTimeSetModelCopyWithImpl<$Res>
    implements _$PlayTimeSetModelCopyWith<$Res> {
  __$PlayTimeSetModelCopyWithImpl(
      _PlayTimeSetModel _value, $Res Function(_PlayTimeSetModel) _then)
      : super(_value, (v) => _then(v as _PlayTimeSetModel));

  @override
  _PlayTimeSetModel get _value => super._value as _PlayTimeSetModel;

  @override
  $Res call({
    Object? seconds = freezed,
    Object? episodeid = freezed,
  }) {
    return _then(_PlayTimeSetModel(
      seconds: seconds == freezed
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      episodeid: episodeid == freezed
          ? _value.episodeid
          : episodeid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayTimeSetModel extends _PlayTimeSetModel
    with DiagnosticableTreeMixin {
  _$_PlayTimeSetModel({required this.seconds, required this.episodeid})
      : super._();

  factory _$_PlayTimeSetModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayTimeSetModelFromJson(json);

  @override
  final int seconds;
  @override
  final String episodeid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayTimeSetModel(seconds: $seconds, episodeid: $episodeid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayTimeSetModel'))
      ..add(DiagnosticsProperty('seconds', seconds))
      ..add(DiagnosticsProperty('episodeid', episodeid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayTimeSetModel &&
            const DeepCollectionEquality().equals(other.seconds, seconds) &&
            const DeepCollectionEquality().equals(other.episodeid, episodeid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seconds),
      const DeepCollectionEquality().hash(episodeid));

  @JsonKey(ignore: true)
  @override
  _$PlayTimeSetModelCopyWith<_PlayTimeSetModel> get copyWith =>
      __$PlayTimeSetModelCopyWithImpl<_PlayTimeSetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayTimeSetModelToJson(this);
  }
}

abstract class _PlayTimeSetModel extends PlayTimeSetModel {
  factory _PlayTimeSetModel({required int seconds, required String episodeid}) =
      _$_PlayTimeSetModel;
  _PlayTimeSetModel._() : super._();

  factory _PlayTimeSetModel.fromJson(Map<String, dynamic> json) =
      _$_PlayTimeSetModel.fromJson;

  @override
  int get seconds;
  @override
  String get episodeid;
  @override
  @JsonKey(ignore: true)
  _$PlayTimeSetModelCopyWith<_PlayTimeSetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
