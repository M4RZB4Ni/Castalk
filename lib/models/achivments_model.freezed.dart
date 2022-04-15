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

  _AchivmentsModel call({Data? data}) {
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
  Data? get data => throw _privateConstructorUsedError;

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
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
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
              as Data?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$AchivmentsModelCopyWith<$Res>
    implements $AchivmentsModelCopyWith<$Res> {
  factory _$AchivmentsModelCopyWith(
          _AchivmentsModel value, $Res Function(_AchivmentsModel) then) =
      __$AchivmentsModelCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
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
              as Data?,
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
  final Data? data;

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
  const factory _AchivmentsModel({Data? data}) = _$_AchivmentsModel;
  const _AchivmentsModel._() : super._();

  factory _AchivmentsModel.fromJson(Map<String, dynamic> json) =
      _$_AchivmentsModel.fromJson;

  @override
  Data? get data;
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

  _Data call({List<Pending>? pending, List<Done>? done}) {
    return _Data(
      pending: pending,
      done: done,
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
  List<Pending>? get pending => throw _privateConstructorUsedError;
  List<Done>? get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<Pending>? pending, List<Done>? done});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? pending = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      pending: pending == freezed
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as List<Pending>?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as List<Done>?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<Pending>? pending, List<Done>? done});
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
    Object? pending = freezed,
    Object? done = freezed,
  }) {
    return _then(_Data(
      pending: pending == freezed
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as List<Pending>?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as List<Done>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data({this.pending, this.done});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final List<Pending>? pending;
  @override
  final List<Done>? done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(pending: $pending, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('pending', pending))
      ..add(DiagnosticsProperty('done', done));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.pending, pending) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pending),
      const DeepCollectionEquality().hash(done));

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
  const factory _Data({List<Pending>? pending, List<Done>? done}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Pending>? get pending;
  @override
  List<Done>? get done;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

Done _$DoneFromJson(Map<String, dynamic> json) {
  return _Done.fromJson(json);
}

/// @nodoc
class _$DoneTearOff {
  const _$DoneTearOff();

  _Done call(
      {int? id,
      int? progress,
      int? target,
      String? description,
      String? icon}) {
    return _Done(
      id: id,
      progress: progress,
      target: target,
      description: description,
      icon: icon,
    );
  }

  Done fromJson(Map<String, Object?> json) {
    return Done.fromJson(json);
  }
}

/// @nodoc
const $Done = _$DoneTearOff();

/// @nodoc
mixin _$Done {
  int? get id => throw _privateConstructorUsedError;
  int? get progress => throw _privateConstructorUsedError;
  int? get target => throw _privateConstructorUsedError; //final String? class,
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoneCopyWith<Done> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoneCopyWith<$Res> {
  factory $DoneCopyWith(Done value, $Res Function(Done) then) =
      _$DoneCopyWithImpl<$Res>;
  $Res call(
      {int? id, int? progress, int? target, String? description, String? icon});
}

/// @nodoc
class _$DoneCopyWithImpl<$Res> implements $DoneCopyWith<$Res> {
  _$DoneCopyWithImpl(this._value, this._then);

  final Done _value;
  // ignore: unused_field
  final $Res Function(Done) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? progress = freezed,
    Object? target = freezed,
    Object? description = freezed,
    Object? icon = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DoneCopyWith<$Res> implements $DoneCopyWith<$Res> {
  factory _$DoneCopyWith(_Done value, $Res Function(_Done) then) =
      __$DoneCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id, int? progress, int? target, String? description, String? icon});
}

/// @nodoc
class __$DoneCopyWithImpl<$Res> extends _$DoneCopyWithImpl<$Res>
    implements _$DoneCopyWith<$Res> {
  __$DoneCopyWithImpl(_Done _value, $Res Function(_Done) _then)
      : super(_value, (v) => _then(v as _Done));

  @override
  _Done get _value => super._value as _Done;

  @override
  $Res call({
    Object? id = freezed,
    Object? progress = freezed,
    Object? target = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_Done(
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Done with DiagnosticableTreeMixin implements _Done {
  const _$_Done(
      {this.id, this.progress, this.target, this.description, this.icon});

  factory _$_Done.fromJson(Map<String, dynamic> json) => _$$_DoneFromJson(json);

  @override
  final int? id;
  @override
  final int? progress;
  @override
  final int? target;
  @override //final String? class,
  final String? description;
  @override
  final String? icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Done(id: $id, progress: $progress, target: $target, description: $description, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Done'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('progress', progress))
      ..add(DiagnosticsProperty('target', target))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Done &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(other.target, target) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(target),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$DoneCopyWith<_Done> get copyWith =>
      __$DoneCopyWithImpl<_Done>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoneToJson(this);
  }
}

abstract class _Done implements Done {
  const factory _Done(
      {int? id,
      int? progress,
      int? target,
      String? description,
      String? icon}) = _$_Done;

  factory _Done.fromJson(Map<String, dynamic> json) = _$_Done.fromJson;

  @override
  int? get id;
  @override
  int? get progress;
  @override
  int? get target;
  @override //final String? class,
  String? get description;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$DoneCopyWith<_Done> get copyWith => throw _privateConstructorUsedError;
}

Pending _$PendingFromJson(Map<String, dynamic> json) {
  return _Pending.fromJson(json);
}

/// @nodoc
class _$PendingTearOff {
  const _$PendingTearOff();

  _Pending call(
      {int? id,
      int? progress,
      int? target,
      String? description,
      String? icon}) {
    return _Pending(
      id: id,
      progress: progress,
      target: target,
      description: description,
      icon: icon,
    );
  }

  Pending fromJson(Map<String, Object?> json) {
    return Pending.fromJson(json);
  }
}

/// @nodoc
const $Pending = _$PendingTearOff();

/// @nodoc
mixin _$Pending {
  int? get id => throw _privateConstructorUsedError;
  int? get progress => throw _privateConstructorUsedError;
  int? get target => throw _privateConstructorUsedError; //final String? class,
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendingCopyWith<Pending> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingCopyWith<$Res> {
  factory $PendingCopyWith(Pending value, $Res Function(Pending) then) =
      _$PendingCopyWithImpl<$Res>;
  $Res call(
      {int? id, int? progress, int? target, String? description, String? icon});
}

/// @nodoc
class _$PendingCopyWithImpl<$Res> implements $PendingCopyWith<$Res> {
  _$PendingCopyWithImpl(this._value, this._then);

  final Pending _value;
  // ignore: unused_field
  final $Res Function(Pending) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? progress = freezed,
    Object? target = freezed,
    Object? description = freezed,
    Object? icon = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PendingCopyWith<$Res> implements $PendingCopyWith<$Res> {
  factory _$PendingCopyWith(_Pending value, $Res Function(_Pending) then) =
      __$PendingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id, int? progress, int? target, String? description, String? icon});
}

/// @nodoc
class __$PendingCopyWithImpl<$Res> extends _$PendingCopyWithImpl<$Res>
    implements _$PendingCopyWith<$Res> {
  __$PendingCopyWithImpl(_Pending _value, $Res Function(_Pending) _then)
      : super(_value, (v) => _then(v as _Pending));

  @override
  _Pending get _value => super._value as _Pending;

  @override
  $Res call({
    Object? id = freezed,
    Object? progress = freezed,
    Object? target = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_Pending(
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pending with DiagnosticableTreeMixin implements _Pending {
  const _$_Pending(
      {this.id, this.progress, this.target, this.description, this.icon});

  factory _$_Pending.fromJson(Map<String, dynamic> json) =>
      _$$_PendingFromJson(json);

  @override
  final int? id;
  @override
  final int? progress;
  @override
  final int? target;
  @override //final String? class,
  final String? description;
  @override
  final String? icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pending(id: $id, progress: $progress, target: $target, description: $description, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pending'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('progress', progress))
      ..add(DiagnosticsProperty('target', target))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pending &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(other.target, target) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(target),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$PendingCopyWith<_Pending> get copyWith =>
      __$PendingCopyWithImpl<_Pending>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PendingToJson(this);
  }
}

abstract class _Pending implements Pending {
  const factory _Pending(
      {int? id,
      int? progress,
      int? target,
      String? description,
      String? icon}) = _$_Pending;

  factory _Pending.fromJson(Map<String, dynamic> json) = _$_Pending.fromJson;

  @override
  int? get id;
  @override
  int? get progress;
  @override
  int? get target;
  @override //final String? class,
  String? get description;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$PendingCopyWith<_Pending> get copyWith =>
      throw _privateConstructorUsedError;
}
