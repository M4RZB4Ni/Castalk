// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_dedicated_plan_delete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscriptionDedicatedPlanDeleteModel
    _$SubscriptionDedicatedPlanDeleteModelFromJson(Map<String, dynamic> json) {
  return _SubscriptionDedicatedPlanDeleteModel.fromJson(json);
}

/// @nodoc
class _$SubscriptionDedicatedPlanDeleteModelTearOff {
  const _$SubscriptionDedicatedPlanDeleteModelTearOff();

  _SubscriptionDedicatedPlanDeleteModel call({required String id}) {
    return _SubscriptionDedicatedPlanDeleteModel(
      id: id,
    );
  }

  SubscriptionDedicatedPlanDeleteModel fromJson(Map<String, Object?> json) {
    return SubscriptionDedicatedPlanDeleteModel.fromJson(json);
  }
}

/// @nodoc
const $SubscriptionDedicatedPlanDeleteModel =
    _$SubscriptionDedicatedPlanDeleteModelTearOff();

/// @nodoc
mixin _$SubscriptionDedicatedPlanDeleteModel {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionDedicatedPlanDeleteModelCopyWith<
          SubscriptionDedicatedPlanDeleteModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionDedicatedPlanDeleteModelCopyWith<$Res> {
  factory $SubscriptionDedicatedPlanDeleteModelCopyWith(
          SubscriptionDedicatedPlanDeleteModel value,
          $Res Function(SubscriptionDedicatedPlanDeleteModel) then) =
      _$SubscriptionDedicatedPlanDeleteModelCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$SubscriptionDedicatedPlanDeleteModelCopyWithImpl<$Res>
    implements $SubscriptionDedicatedPlanDeleteModelCopyWith<$Res> {
  _$SubscriptionDedicatedPlanDeleteModelCopyWithImpl(this._value, this._then);

  final SubscriptionDedicatedPlanDeleteModel _value;
  // ignore: unused_field
  final $Res Function(SubscriptionDedicatedPlanDeleteModel) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SubscriptionDedicatedPlanDeleteModelCopyWith<$Res>
    implements $SubscriptionDedicatedPlanDeleteModelCopyWith<$Res> {
  factory _$SubscriptionDedicatedPlanDeleteModelCopyWith(
          _SubscriptionDedicatedPlanDeleteModel value,
          $Res Function(_SubscriptionDedicatedPlanDeleteModel) then) =
      __$SubscriptionDedicatedPlanDeleteModelCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$SubscriptionDedicatedPlanDeleteModelCopyWithImpl<$Res>
    extends _$SubscriptionDedicatedPlanDeleteModelCopyWithImpl<$Res>
    implements _$SubscriptionDedicatedPlanDeleteModelCopyWith<$Res> {
  __$SubscriptionDedicatedPlanDeleteModelCopyWithImpl(
      _SubscriptionDedicatedPlanDeleteModel _value,
      $Res Function(_SubscriptionDedicatedPlanDeleteModel) _then)
      : super(_value, (v) => _then(v as _SubscriptionDedicatedPlanDeleteModel));

  @override
  _SubscriptionDedicatedPlanDeleteModel get _value =>
      super._value as _SubscriptionDedicatedPlanDeleteModel;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SubscriptionDedicatedPlanDeleteModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscriptionDedicatedPlanDeleteModel
    extends _SubscriptionDedicatedPlanDeleteModel with DiagnosticableTreeMixin {
  _$_SubscriptionDedicatedPlanDeleteModel({required this.id}) : super._();

  factory _$_SubscriptionDedicatedPlanDeleteModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_SubscriptionDedicatedPlanDeleteModelFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionDedicatedPlanDeleteModel(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubscriptionDedicatedPlanDeleteModel'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionDedicatedPlanDeleteModel &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$SubscriptionDedicatedPlanDeleteModelCopyWith<
          _SubscriptionDedicatedPlanDeleteModel>
      get copyWith => __$SubscriptionDedicatedPlanDeleteModelCopyWithImpl<
          _SubscriptionDedicatedPlanDeleteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionDedicatedPlanDeleteModelToJson(this);
  }
}

abstract class _SubscriptionDedicatedPlanDeleteModel
    extends SubscriptionDedicatedPlanDeleteModel {
  factory _SubscriptionDedicatedPlanDeleteModel({required String id}) =
      _$_SubscriptionDedicatedPlanDeleteModel;
  _SubscriptionDedicatedPlanDeleteModel._() : super._();

  factory _SubscriptionDedicatedPlanDeleteModel.fromJson(
          Map<String, dynamic> json) =
      _$_SubscriptionDedicatedPlanDeleteModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionDedicatedPlanDeleteModelCopyWith<
          _SubscriptionDedicatedPlanDeleteModel>
      get copyWith => throw _privateConstructorUsedError;
}
