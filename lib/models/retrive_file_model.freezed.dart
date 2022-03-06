// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'retrive_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RetriveFileModel _$RetriveFileModelFromJson(Map<String, dynamic> json) {
  return _RetriveFileModel.fromJson(json);
}

/// @nodoc
class _$RetriveFileModelTearOff {
  const _$RetriveFileModelTearOff();

  _RetriveFileModel call({required String id}) {
    return _RetriveFileModel(
      id: id,
    );
  }

  RetriveFileModel fromJson(Map<String, Object?> json) {
    return RetriveFileModel.fromJson(json);
  }
}

/// @nodoc
const $RetriveFileModel = _$RetriveFileModelTearOff();

/// @nodoc
mixin _$RetriveFileModel {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RetriveFileModelCopyWith<RetriveFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetriveFileModelCopyWith<$Res> {
  factory $RetriveFileModelCopyWith(
          RetriveFileModel value, $Res Function(RetriveFileModel) then) =
      _$RetriveFileModelCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$RetriveFileModelCopyWithImpl<$Res>
    implements $RetriveFileModelCopyWith<$Res> {
  _$RetriveFileModelCopyWithImpl(this._value, this._then);

  final RetriveFileModel _value;
  // ignore: unused_field
  final $Res Function(RetriveFileModel) _then;

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
abstract class _$RetriveFileModelCopyWith<$Res>
    implements $RetriveFileModelCopyWith<$Res> {
  factory _$RetriveFileModelCopyWith(
          _RetriveFileModel value, $Res Function(_RetriveFileModel) then) =
      __$RetriveFileModelCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$RetriveFileModelCopyWithImpl<$Res>
    extends _$RetriveFileModelCopyWithImpl<$Res>
    implements _$RetriveFileModelCopyWith<$Res> {
  __$RetriveFileModelCopyWithImpl(
      _RetriveFileModel _value, $Res Function(_RetriveFileModel) _then)
      : super(_value, (v) => _then(v as _RetriveFileModel));

  @override
  _RetriveFileModel get _value => super._value as _RetriveFileModel;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RetriveFileModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RetriveFileModel extends _RetriveFileModel
    with DiagnosticableTreeMixin {
  _$_RetriveFileModel({required this.id}) : super._();

  factory _$_RetriveFileModel.fromJson(Map<String, dynamic> json) =>
      _$$_RetriveFileModelFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RetriveFileModel(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RetriveFileModel'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RetriveFileModel &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$RetriveFileModelCopyWith<_RetriveFileModel> get copyWith =>
      __$RetriveFileModelCopyWithImpl<_RetriveFileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RetriveFileModelToJson(this);
  }
}

abstract class _RetriveFileModel extends RetriveFileModel {
  factory _RetriveFileModel({required String id}) = _$_RetriveFileModel;
  _RetriveFileModel._() : super._();

  factory _RetriveFileModel.fromJson(Map<String, dynamic> json) =
      _$_RetriveFileModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$RetriveFileModelCopyWith<_RetriveFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
