// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'like_podcast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LikePodcastModel _$LikePodcastModelFromJson(Map<String, dynamic> json) {
  return _LikePodcastModel.fromJson(json);
}

/// @nodoc
class _$LikePodcastModelTearOff {
  const _$LikePodcastModelTearOff();

  _LikePodcastModel call({required String podcastid}) {
    return _LikePodcastModel(
      podcastid: podcastid,
    );
  }

  LikePodcastModel fromJson(Map<String, Object?> json) {
    return LikePodcastModel.fromJson(json);
  }
}

/// @nodoc
const $LikePodcastModel = _$LikePodcastModelTearOff();

/// @nodoc
mixin _$LikePodcastModel {
  String get podcastid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikePodcastModelCopyWith<LikePodcastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikePodcastModelCopyWith<$Res> {
  factory $LikePodcastModelCopyWith(
          LikePodcastModel value, $Res Function(LikePodcastModel) then) =
      _$LikePodcastModelCopyWithImpl<$Res>;
  $Res call({String podcastid});
}

/// @nodoc
class _$LikePodcastModelCopyWithImpl<$Res>
    implements $LikePodcastModelCopyWith<$Res> {
  _$LikePodcastModelCopyWithImpl(this._value, this._then);

  final LikePodcastModel _value;
  // ignore: unused_field
  final $Res Function(LikePodcastModel) _then;

  @override
  $Res call({
    Object? podcastid = freezed,
  }) {
    return _then(_value.copyWith(
      podcastid: podcastid == freezed
          ? _value.podcastid
          : podcastid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LikePodcastModelCopyWith<$Res>
    implements $LikePodcastModelCopyWith<$Res> {
  factory _$LikePodcastModelCopyWith(
          _LikePodcastModel value, $Res Function(_LikePodcastModel) then) =
      __$LikePodcastModelCopyWithImpl<$Res>;
  @override
  $Res call({String podcastid});
}

/// @nodoc
class __$LikePodcastModelCopyWithImpl<$Res>
    extends _$LikePodcastModelCopyWithImpl<$Res>
    implements _$LikePodcastModelCopyWith<$Res> {
  __$LikePodcastModelCopyWithImpl(
      _LikePodcastModel _value, $Res Function(_LikePodcastModel) _then)
      : super(_value, (v) => _then(v as _LikePodcastModel));

  @override
  _LikePodcastModel get _value => super._value as _LikePodcastModel;

  @override
  $Res call({
    Object? podcastid = freezed,
  }) {
    return _then(_LikePodcastModel(
      podcastid: podcastid == freezed
          ? _value.podcastid
          : podcastid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LikePodcastModel extends _LikePodcastModel
    with DiagnosticableTreeMixin {
  _$_LikePodcastModel({required this.podcastid}) : super._();

  factory _$_LikePodcastModel.fromJson(Map<String, dynamic> json) =>
      _$$_LikePodcastModelFromJson(json);

  @override
  final String podcastid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LikePodcastModel(podcastid: $podcastid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LikePodcastModel'))
      ..add(DiagnosticsProperty('podcastid', podcastid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikePodcastModel &&
            const DeepCollectionEquality().equals(other.podcastid, podcastid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(podcastid));

  @JsonKey(ignore: true)
  @override
  _$LikePodcastModelCopyWith<_LikePodcastModel> get copyWith =>
      __$LikePodcastModelCopyWithImpl<_LikePodcastModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikePodcastModelToJson(this);
  }
}

abstract class _LikePodcastModel extends LikePodcastModel {
  factory _LikePodcastModel({required String podcastid}) = _$_LikePodcastModel;
  _LikePodcastModel._() : super._();

  factory _LikePodcastModel.fromJson(Map<String, dynamic> json) =
      _$_LikePodcastModel.fromJson;

  @override
  String get podcastid;
  @override
  @JsonKey(ignore: true)
  _$LikePodcastModelCopyWith<_LikePodcastModel> get copyWith =>
      throw _privateConstructorUsedError;
}
