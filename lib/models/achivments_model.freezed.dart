// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'achivments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AchivmentsModel _$AchivmentsModelFromJson(Map<String, dynamic> json) {
  return _AchivmentsModel.fromJson(json);
}

/// @nodoc
class _$AchivmentsModelTearOff {
  const _$AchivmentsModelTearOff();

  _AchivmentsModel call({List<Data>? data}) {
    return _AchivmentsModel(
      data: data,
    );
  }

  AchivmentsModel fromJson(Map<String, Object?> json) {
    return AchivmentsModel.fromJson(json);
  }
}

/// @nodoc
const $AchivmentsModel = _$AchivmentsModelTearOff();

/// @nodoc
mixin _$AchivmentsModel {
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AchivmentsModelCopyWith<AchivmentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchivmentsModelCopyWith<$Res> {
  factory $AchivmentsModelCopyWith(
          AchivmentsModel value, $Res Function(AchivmentsModel) then) =
      _$AchivmentsModelCopyWithImpl<$Res>;
  $Res call({List<Data>? data});
}

/// @nodoc
class _$AchivmentsModelCopyWithImpl<$Res>
    implements $AchivmentsModelCopyWith<$Res> {
  _$AchivmentsModelCopyWithImpl(this._value, this._then);

  final AchivmentsModel _value;
  // ignore: unused_field
  final $Res Function(AchivmentsModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
abstract class _$AchivmentsModelCopyWith<$Res>
    implements $AchivmentsModelCopyWith<$Res> {
  factory _$AchivmentsModelCopyWith(
          _AchivmentsModel value, $Res Function(_AchivmentsModel) then) =
      __$AchivmentsModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Data>? data});
}

/// @nodoc
class __$AchivmentsModelCopyWithImpl<$Res>
    extends _$AchivmentsModelCopyWithImpl<$Res>
    implements _$AchivmentsModelCopyWith<$Res> {
  __$AchivmentsModelCopyWithImpl(
      _AchivmentsModel _value, $Res Function(_AchivmentsModel) _then)
      : super(_value, (v) => _then(v as _AchivmentsModel));

  @override
  _AchivmentsModel get _value => super._value as _AchivmentsModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_AchivmentsModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AchivmentsModel extends _AchivmentsModel with DiagnosticableTreeMixin {
  const _$_AchivmentsModel({this.data}) : super._();

  factory _$_AchivmentsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AchivmentsModelFromJson(json);

  @override
  final List<Data>? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AchivmentsModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AchivmentsModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AchivmentsModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$AchivmentsModelCopyWith<_AchivmentsModel> get copyWith =>
      __$AchivmentsModelCopyWithImpl<_AchivmentsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AchivmentsModelToJson(this);
  }
}

abstract class _AchivmentsModel extends AchivmentsModel {
  const factory _AchivmentsModel({List<Data>? data}) = _$_AchivmentsModel;
  const _AchivmentsModel._() : super._();

  factory _AchivmentsModel.fromJson(Map<String, dynamic> json) =
      _$_AchivmentsModel.fromJson;

  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$AchivmentsModelCopyWith<_AchivmentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {int? id,
      int? progress,
      int? target,
      String? created_at,
      String? updated_at,
      int? user_id}) {
    return _Data(
      id: id,
      progress: progress,
      target: target,
      created_at: created_at,
      updated_at: updated_at,
      user_id: user_id,
    );
  }

  Data fromJson(Map<String, Object?> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  int? get id => throw _privateConstructorUsedError;
  int? get progress => throw _privateConstructorUsedError;
  int? get target => throw _privateConstructorUsedError; //final String? class,
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? progress,
      int? target,
      String? created_at,
      String? updated_at,
      int? user_id});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? progress = freezed,
    Object? target = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? user_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? progress,
      int? target,
      String? created_at,
      String? updated_at,
      int? user_id});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? id = freezed,
    Object? progress = freezed,
    Object? target = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? user_id = freezed,
  }) {
    return _then(_Data(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data(
      {this.id,
      this.progress,
      this.target,
      this.created_at,
      this.updated_at,
      this.user_id});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? id;
  @override
  final int? progress;
  @override
  final int? target;
  @override //final String? class,
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final int? user_id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(id: $id, progress: $progress, target: $target, created_at: $created_at, updated_at: $updated_at, user_id: $user_id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('progress', progress))
      ..add(DiagnosticsProperty('target', target))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('updated_at', updated_at))
      ..add(DiagnosticsProperty('user_id', user_id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(other.target, target) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality().equals(other.user_id, user_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(target),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(user_id));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {int? id,
      int? progress,
      int? target,
      String? created_at,
      String? updated_at,
      int? user_id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get id;
  @override
  int? get progress;
  @override
  int? get target;
  @override //final String? class,
  String? get created_at;
  @override
  String? get updated_at;
  @override
  int? get user_id;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
