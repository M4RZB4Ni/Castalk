// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'congratulations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CongratulationsModel _$CongratulationsModelFromJson(Map<String, dynamic> json) {
  return _CongratulationsModel.fromJson(json);
}

/// @nodoc
class _$CongratulationsModelTearOff {
  const _$CongratulationsModelTearOff();

  _CongratulationsModel call({required int id, required String title}) {
    return _CongratulationsModel(
      id: id,
      title: title,
    );
  }

  CongratulationsModel fromJson(Map<String, Object?> json) {
    return CongratulationsModel.fromJson(json);
  }
}

/// @nodoc
const $CongratulationsModel = _$CongratulationsModelTearOff();

/// @nodoc
mixin _$CongratulationsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CongratulationsModelCopyWith<CongratulationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CongratulationsModelCopyWith<$Res> {
  factory $CongratulationsModelCopyWith(CongratulationsModel value,
          $Res Function(CongratulationsModel) then) =
      _$CongratulationsModelCopyWithImpl<$Res>;
  $Res call({int id, String title});
}

/// @nodoc
class _$CongratulationsModelCopyWithImpl<$Res>
    implements $CongratulationsModelCopyWith<$Res> {
  _$CongratulationsModelCopyWithImpl(this._value, this._then);

  final CongratulationsModel _value;
  // ignore: unused_field
  final $Res Function(CongratulationsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CongratulationsModelCopyWith<$Res>
    implements $CongratulationsModelCopyWith<$Res> {
  factory _$CongratulationsModelCopyWith(_CongratulationsModel value,
          $Res Function(_CongratulationsModel) then) =
      __$CongratulationsModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
}

/// @nodoc
class __$CongratulationsModelCopyWithImpl<$Res>
    extends _$CongratulationsModelCopyWithImpl<$Res>
    implements _$CongratulationsModelCopyWith<$Res> {
  __$CongratulationsModelCopyWithImpl(
      _CongratulationsModel _value, $Res Function(_CongratulationsModel) _then)
      : super(_value, (v) => _then(v as _CongratulationsModel));

  @override
  _CongratulationsModel get _value => super._value as _CongratulationsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_CongratulationsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CongratulationsModel extends _CongratulationsModel
    with DiagnosticableTreeMixin {
  _$_CongratulationsModel({required this.id, required this.title}) : super._();

  factory _$_CongratulationsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CongratulationsModelFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CongratulationsModel(id: $id, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CongratulationsModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CongratulationsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$CongratulationsModelCopyWith<_CongratulationsModel> get copyWith =>
      __$CongratulationsModelCopyWithImpl<_CongratulationsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CongratulationsModelToJson(this);
  }
}

abstract class _CongratulationsModel extends CongratulationsModel {
  factory _CongratulationsModel({required int id, required String title}) =
      _$_CongratulationsModel;
  _CongratulationsModel._() : super._();

  factory _CongratulationsModel.fromJson(Map<String, dynamic> json) =
      _$_CongratulationsModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$CongratulationsModelCopyWith<_CongratulationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
