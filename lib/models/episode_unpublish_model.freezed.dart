// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode_unpublish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodeUnPublishModel _$EpisodeUnPublishModelFromJson(
    Map<String, dynamic> json) {
  return _EpisodeUnPublishModel.fromJson(json);
}

/// @nodoc
class _$EpisodeUnPublishModelTearOff {
  const _$EpisodeUnPublishModelTearOff();

  _EpisodeUnPublishModel call({required String episodeid}) {
    return _EpisodeUnPublishModel(
      episodeid: episodeid,
    );
  }

  EpisodeUnPublishModel fromJson(Map<String, Object?> json) {
    return EpisodeUnPublishModel.fromJson(json);
  }
}

/// @nodoc
const $EpisodeUnPublishModel = _$EpisodeUnPublishModelTearOff();

/// @nodoc
mixin _$EpisodeUnPublishModel {
  String get episodeid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeUnPublishModelCopyWith<EpisodeUnPublishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeUnPublishModelCopyWith<$Res> {
  factory $EpisodeUnPublishModelCopyWith(EpisodeUnPublishModel value,
          $Res Function(EpisodeUnPublishModel) then) =
      _$EpisodeUnPublishModelCopyWithImpl<$Res>;
  $Res call({String episodeid});
}

/// @nodoc
class _$EpisodeUnPublishModelCopyWithImpl<$Res>
    implements $EpisodeUnPublishModelCopyWith<$Res> {
  _$EpisodeUnPublishModelCopyWithImpl(this._value, this._then);

  final EpisodeUnPublishModel _value;
  // ignore: unused_field
  final $Res Function(EpisodeUnPublishModel) _then;

  @override
  $Res call({
    Object? episodeid = freezed,
  }) {
    return _then(_value.copyWith(
      episodeid: episodeid == freezed
          ? _value.episodeid
          : episodeid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EpisodeUnPublishModelCopyWith<$Res>
    implements $EpisodeUnPublishModelCopyWith<$Res> {
  factory _$EpisodeUnPublishModelCopyWith(_EpisodeUnPublishModel value,
          $Res Function(_EpisodeUnPublishModel) then) =
      __$EpisodeUnPublishModelCopyWithImpl<$Res>;
  @override
  $Res call({String episodeid});
}

/// @nodoc
class __$EpisodeUnPublishModelCopyWithImpl<$Res>
    extends _$EpisodeUnPublishModelCopyWithImpl<$Res>
    implements _$EpisodeUnPublishModelCopyWith<$Res> {
  __$EpisodeUnPublishModelCopyWithImpl(_EpisodeUnPublishModel _value,
      $Res Function(_EpisodeUnPublishModel) _then)
      : super(_value, (v) => _then(v as _EpisodeUnPublishModel));

  @override
  _EpisodeUnPublishModel get _value => super._value as _EpisodeUnPublishModel;

  @override
  $Res call({
    Object? episodeid = freezed,
  }) {
    return _then(_EpisodeUnPublishModel(
      episodeid: episodeid == freezed
          ? _value.episodeid
          : episodeid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodeUnPublishModel extends _EpisodeUnPublishModel
    with DiagnosticableTreeMixin {
  _$_EpisodeUnPublishModel({required this.episodeid}) : super._();

  factory _$_EpisodeUnPublishModel.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeUnPublishModelFromJson(json);

  @override
  final String episodeid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeUnPublishModel(episodeid: $episodeid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodeUnPublishModel'))
      ..add(DiagnosticsProperty('episodeid', episodeid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EpisodeUnPublishModel &&
            const DeepCollectionEquality().equals(other.episodeid, episodeid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episodeid));

  @JsonKey(ignore: true)
  @override
  _$EpisodeUnPublishModelCopyWith<_EpisodeUnPublishModel> get copyWith =>
      __$EpisodeUnPublishModelCopyWithImpl<_EpisodeUnPublishModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeUnPublishModelToJson(this);
  }
}

abstract class _EpisodeUnPublishModel extends EpisodeUnPublishModel {
  factory _EpisodeUnPublishModel({required String episodeid}) =
      _$_EpisodeUnPublishModel;
  _EpisodeUnPublishModel._() : super._();

  factory _EpisodeUnPublishModel.fromJson(Map<String, dynamic> json) =
      _$_EpisodeUnPublishModel.fromJson;

  @override
  String get episodeid;
  @override
  @JsonKey(ignore: true)
  _$EpisodeUnPublishModelCopyWith<_EpisodeUnPublishModel> get copyWith =>
      throw _privateConstructorUsedError;
}
