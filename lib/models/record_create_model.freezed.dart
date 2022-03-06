// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'record_create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecordCreateModel _$RecordCreateModelFromJson(Map<String, dynamic> json) {
  return _RecordCreateModel.fromJson(json);
}

/// @nodoc
class _$RecordCreateModelTearOff {
  const _$RecordCreateModelTearOff();

  _RecordCreateModel call({required String id}) {
    return _RecordCreateModel(
      id: id,
    );
  }

  RecordCreateModel fromJson(Map<String, Object?> json) {
    return RecordCreateModel.fromJson(json);
  }
}

/// @nodoc
const $RecordCreateModel = _$RecordCreateModelTearOff();

/// @nodoc
mixin _$RecordCreateModel {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordCreateModelCopyWith<RecordCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordCreateModelCopyWith<$Res> {
  factory $RecordCreateModelCopyWith(
          RecordCreateModel value, $Res Function(RecordCreateModel) then) =
      _$RecordCreateModelCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$RecordCreateModelCopyWithImpl<$Res>
    implements $RecordCreateModelCopyWith<$Res> {
  _$RecordCreateModelCopyWithImpl(this._value, this._then);

  final RecordCreateModel _value;
  // ignore: unused_field
  final $Res Function(RecordCreateModel) _then;

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
abstract class _$RecordCreateModelCopyWith<$Res>
    implements $RecordCreateModelCopyWith<$Res> {
  factory _$RecordCreateModelCopyWith(
          _RecordCreateModel value, $Res Function(_RecordCreateModel) then) =
      __$RecordCreateModelCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$RecordCreateModelCopyWithImpl<$Res>
    extends _$RecordCreateModelCopyWithImpl<$Res>
    implements _$RecordCreateModelCopyWith<$Res> {
  __$RecordCreateModelCopyWithImpl(
      _RecordCreateModel _value, $Res Function(_RecordCreateModel) _then)
      : super(_value, (v) => _then(v as _RecordCreateModel));

  @override
  _RecordCreateModel get _value => super._value as _RecordCreateModel;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RecordCreateModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecordCreateModel extends _RecordCreateModel
    with DiagnosticableTreeMixin {
  _$_RecordCreateModel({required this.id}) : super._();

  factory _$_RecordCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecordCreateModelFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordCreateModel(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordCreateModel'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecordCreateModel &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$RecordCreateModelCopyWith<_RecordCreateModel> get copyWith =>
      __$RecordCreateModelCopyWithImpl<_RecordCreateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordCreateModelToJson(this);
  }
}

abstract class _RecordCreateModel extends RecordCreateModel {
  factory _RecordCreateModel({required String id}) = _$_RecordCreateModel;
  _RecordCreateModel._() : super._();

  factory _RecordCreateModel.fromJson(Map<String, dynamic> json) =
      _$_RecordCreateModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$RecordCreateModelCopyWith<_RecordCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
