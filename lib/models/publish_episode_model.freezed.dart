// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'publish_episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublishEpisodeModel _$PublishEpisodeModelFromJson(Map<String, dynamic> json) {
  return _PublishEpisodeModel.fromJson(json);
}

/// @nodoc
class _$PublishEpisodeModelTearOff {
  const _$PublishEpisodeModelTearOff();

  _PublishEpisodeModel call({required String episodeid}) {
    return _PublishEpisodeModel(
      episodeid: episodeid,
    );
  }

  PublishEpisodeModel fromJson(Map<String, Object?> json) {
    return PublishEpisodeModel.fromJson(json);
  }
}

/// @nodoc
const $PublishEpisodeModel = _$PublishEpisodeModelTearOff();

/// @nodoc
mixin _$PublishEpisodeModel {
  String get episodeid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublishEpisodeModelCopyWith<PublishEpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishEpisodeModelCopyWith<$Res> {
  factory $PublishEpisodeModelCopyWith(
          PublishEpisodeModel value, $Res Function(PublishEpisodeModel) then) =
      _$PublishEpisodeModelCopyWithImpl<$Res>;
  $Res call({String episodeid});
}

/// @nodoc
class _$PublishEpisodeModelCopyWithImpl<$Res>
    implements $PublishEpisodeModelCopyWith<$Res> {
  _$PublishEpisodeModelCopyWithImpl(this._value, this._then);

  final PublishEpisodeModel _value;
  // ignore: unused_field
  final $Res Function(PublishEpisodeModel) _then;

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
abstract class _$PublishEpisodeModelCopyWith<$Res>
    implements $PublishEpisodeModelCopyWith<$Res> {
  factory _$PublishEpisodeModelCopyWith(_PublishEpisodeModel value,
          $Res Function(_PublishEpisodeModel) then) =
      __$PublishEpisodeModelCopyWithImpl<$Res>;
  @override
  $Res call({String episodeid});
}

/// @nodoc
class __$PublishEpisodeModelCopyWithImpl<$Res>
    extends _$PublishEpisodeModelCopyWithImpl<$Res>
    implements _$PublishEpisodeModelCopyWith<$Res> {
  __$PublishEpisodeModelCopyWithImpl(
      _PublishEpisodeModel _value, $Res Function(_PublishEpisodeModel) _then)
      : super(_value, (v) => _then(v as _PublishEpisodeModel));

  @override
  _PublishEpisodeModel get _value => super._value as _PublishEpisodeModel;

  @override
  $Res call({
    Object? episodeid = freezed,
  }) {
    return _then(_PublishEpisodeModel(
      episodeid: episodeid == freezed
          ? _value.episodeid
          : episodeid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PublishEpisodeModel extends _PublishEpisodeModel
    with DiagnosticableTreeMixin {
  _$_PublishEpisodeModel({required this.episodeid}) : super._();

  factory _$_PublishEpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_PublishEpisodeModelFromJson(json);

  @override
  final String episodeid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PublishEpisodeModel(episodeid: $episodeid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PublishEpisodeModel'))
      ..add(DiagnosticsProperty('episodeid', episodeid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PublishEpisodeModel &&
            const DeepCollectionEquality().equals(other.episodeid, episodeid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episodeid));

  @JsonKey(ignore: true)
  @override
  _$PublishEpisodeModelCopyWith<_PublishEpisodeModel> get copyWith =>
      __$PublishEpisodeModelCopyWithImpl<_PublishEpisodeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublishEpisodeModelToJson(this);
  }
}

abstract class _PublishEpisodeModel extends PublishEpisodeModel {
  factory _PublishEpisodeModel({required String episodeid}) =
      _$_PublishEpisodeModel;
  _PublishEpisodeModel._() : super._();

  factory _PublishEpisodeModel.fromJson(Map<String, dynamic> json) =
      _$_PublishEpisodeModel.fromJson;

  @override
  String get episodeid;
  @override
  @JsonKey(ignore: true)
  _$PublishEpisodeModelCopyWith<_PublishEpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
