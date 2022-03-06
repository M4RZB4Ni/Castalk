// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode_publish_by_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodePublishByScheduleModel _$EpisodePublishByScheduleModelFromJson(
    Map<String, dynamic> json) {
  return _EpisodePublishByScheduleModel.fromJson(json);
}

/// @nodoc
class _$EpisodePublishByScheduleModelTearOff {
  const _$EpisodePublishByScheduleModelTearOff();

  _EpisodePublishByScheduleModel call(
      {required String id, required String date}) {
    return _EpisodePublishByScheduleModel(
      id: id,
      date: date,
    );
  }

  EpisodePublishByScheduleModel fromJson(Map<String, Object?> json) {
    return EpisodePublishByScheduleModel.fromJson(json);
  }
}

/// @nodoc
const $EpisodePublishByScheduleModel = _$EpisodePublishByScheduleModelTearOff();

/// @nodoc
mixin _$EpisodePublishByScheduleModel {
  String get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodePublishByScheduleModelCopyWith<EpisodePublishByScheduleModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodePublishByScheduleModelCopyWith<$Res> {
  factory $EpisodePublishByScheduleModelCopyWith(
          EpisodePublishByScheduleModel value,
          $Res Function(EpisodePublishByScheduleModel) then) =
      _$EpisodePublishByScheduleModelCopyWithImpl<$Res>;
  $Res call({String id, String date});
}

/// @nodoc
class _$EpisodePublishByScheduleModelCopyWithImpl<$Res>
    implements $EpisodePublishByScheduleModelCopyWith<$Res> {
  _$EpisodePublishByScheduleModelCopyWithImpl(this._value, this._then);

  final EpisodePublishByScheduleModel _value;
  // ignore: unused_field
  final $Res Function(EpisodePublishByScheduleModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EpisodePublishByScheduleModelCopyWith<$Res>
    implements $EpisodePublishByScheduleModelCopyWith<$Res> {
  factory _$EpisodePublishByScheduleModelCopyWith(
          _EpisodePublishByScheduleModel value,
          $Res Function(_EpisodePublishByScheduleModel) then) =
      __$EpisodePublishByScheduleModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String date});
}

/// @nodoc
class __$EpisodePublishByScheduleModelCopyWithImpl<$Res>
    extends _$EpisodePublishByScheduleModelCopyWithImpl<$Res>
    implements _$EpisodePublishByScheduleModelCopyWith<$Res> {
  __$EpisodePublishByScheduleModelCopyWithImpl(
      _EpisodePublishByScheduleModel _value,
      $Res Function(_EpisodePublishByScheduleModel) _then)
      : super(_value, (v) => _then(v as _EpisodePublishByScheduleModel));

  @override
  _EpisodePublishByScheduleModel get _value =>
      super._value as _EpisodePublishByScheduleModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
  }) {
    return _then(_EpisodePublishByScheduleModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodePublishByScheduleModel extends _EpisodePublishByScheduleModel
    with DiagnosticableTreeMixin {
  _$_EpisodePublishByScheduleModel({required this.id, required this.date})
      : super._();

  factory _$_EpisodePublishByScheduleModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_EpisodePublishByScheduleModelFromJson(json);

  @override
  final String id;
  @override
  final String date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodePublishByScheduleModel(id: $id, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodePublishByScheduleModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EpisodePublishByScheduleModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$EpisodePublishByScheduleModelCopyWith<_EpisodePublishByScheduleModel>
      get copyWith => __$EpisodePublishByScheduleModelCopyWithImpl<
          _EpisodePublishByScheduleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodePublishByScheduleModelToJson(this);
  }
}

abstract class _EpisodePublishByScheduleModel
    extends EpisodePublishByScheduleModel {
  factory _EpisodePublishByScheduleModel(
      {required String id,
      required String date}) = _$_EpisodePublishByScheduleModel;
  _EpisodePublishByScheduleModel._() : super._();

  factory _EpisodePublishByScheduleModel.fromJson(Map<String, dynamic> json) =
      _$_EpisodePublishByScheduleModel.fromJson;

  @override
  String get id;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$EpisodePublishByScheduleModelCopyWith<_EpisodePublishByScheduleModel>
      get copyWith => throw _privateConstructorUsedError;
}
