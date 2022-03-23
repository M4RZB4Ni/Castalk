// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'followers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FollowersModel _$FollowersModelFromJson(Map<String, dynamic> json) {
  return _FollowersModel.fromJson(json);
}

/// @nodoc
class _$FollowersModelTearOff {
  const _$FollowersModelTearOff();

  _FollowersModel call({Data? data}) {
    return _FollowersModel(
      data: data,
    );
  }

  FollowersModel fromJson(Map<String, Object?> json) {
    return FollowersModel.fromJson(json);
  }
}

/// @nodoc
const $FollowersModel = _$FollowersModelTearOff();

/// @nodoc
mixin _$FollowersModel {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowersModelCopyWith<FollowersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersModelCopyWith<$Res> {
  factory $FollowersModelCopyWith(
          FollowersModel value, $Res Function(FollowersModel) then) =
      _$FollowersModelCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FollowersModelCopyWithImpl<$Res>
    implements $FollowersModelCopyWith<$Res> {
  _$FollowersModelCopyWithImpl(this._value, this._then);

  final FollowersModel _value;
  // ignore: unused_field
  final $Res Function(FollowersModel) _then;

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
abstract class _$FollowersModelCopyWith<$Res>
    implements $FollowersModelCopyWith<$Res> {
  factory _$FollowersModelCopyWith(
          _FollowersModel value, $Res Function(_FollowersModel) then) =
      __$FollowersModelCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$FollowersModelCopyWithImpl<$Res>
    extends _$FollowersModelCopyWithImpl<$Res>
    implements _$FollowersModelCopyWith<$Res> {
  __$FollowersModelCopyWithImpl(
      _FollowersModel _value, $Res Function(_FollowersModel) _then)
      : super(_value, (v) => _then(v as _FollowersModel));

  @override
  _FollowersModel get _value => super._value as _FollowersModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_FollowersModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowersModel extends _FollowersModel with DiagnosticableTreeMixin {
  const _$_FollowersModel({this.data}) : super._();

  factory _$_FollowersModel.fromJson(Map<String, dynamic> json) =>
      _$$_FollowersModelFromJson(json);

  @override
  final Data? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FollowersModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FollowersModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowersModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$FollowersModelCopyWith<_FollowersModel> get copyWith =>
      __$FollowersModelCopyWithImpl<_FollowersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowersModelToJson(this);
  }
}

abstract class _FollowersModel extends FollowersModel {
  const factory _FollowersModel({Data? data}) = _$_FollowersModel;
  const _FollowersModel._() : super._();

  factory _FollowersModel.fromJson(Map<String, dynamic> json) =
      _$_FollowersModel.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$FollowersModelCopyWith<_FollowersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call({List<FollowersItems>? data}) {
    return _Data(
      data: data,
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
  List<FollowersItems>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<FollowersItems>? data});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FollowersItems>?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<FollowersItems>? data});
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
    Object? data = freezed,
  }) {
    return _then(_Data(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FollowersItems>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data({this.data});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final List<FollowersItems>? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

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
  const factory _Data({List<FollowersItems>? data}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<FollowersItems>? get data;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

FollowersItems _$FollowersItemsFromJson(Map<String, dynamic> json) {
  return _FollowersItems.fromJson(json);
}

/// @nodoc
class _$FollowersItemsTearOff {
  const _$FollowersItemsTearOff();

  _FollowersItems call({int? follower_id, FollowersValues? follower}) {
    return _FollowersItems(
      follower_id: follower_id,
      follower: follower,
    );
  }

  FollowersItems fromJson(Map<String, Object?> json) {
    return FollowersItems.fromJson(json);
  }
}

/// @nodoc
const $FollowersItems = _$FollowersItemsTearOff();

/// @nodoc
mixin _$FollowersItems {
  int? get follower_id => throw _privateConstructorUsedError;
  FollowersValues? get follower => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowersItemsCopyWith<FollowersItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersItemsCopyWith<$Res> {
  factory $FollowersItemsCopyWith(
          FollowersItems value, $Res Function(FollowersItems) then) =
      _$FollowersItemsCopyWithImpl<$Res>;
  $Res call({int? follower_id, FollowersValues? follower});

  $FollowersValuesCopyWith<$Res>? get follower;
}

/// @nodoc
class _$FollowersItemsCopyWithImpl<$Res>
    implements $FollowersItemsCopyWith<$Res> {
  _$FollowersItemsCopyWithImpl(this._value, this._then);

  final FollowersItems _value;
  // ignore: unused_field
  final $Res Function(FollowersItems) _then;

  @override
  $Res call({
    Object? follower_id = freezed,
    Object? follower = freezed,
  }) {
    return _then(_value.copyWith(
      follower_id: follower_id == freezed
          ? _value.follower_id
          : follower_id // ignore: cast_nullable_to_non_nullable
              as int?,
      follower: follower == freezed
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as FollowersValues?,
    ));
  }

  @override
  $FollowersValuesCopyWith<$Res>? get follower {
    if (_value.follower == null) {
      return null;
    }

    return $FollowersValuesCopyWith<$Res>(_value.follower!, (value) {
      return _then(_value.copyWith(follower: value));
    });
  }
}

/// @nodoc
abstract class _$FollowersItemsCopyWith<$Res>
    implements $FollowersItemsCopyWith<$Res> {
  factory _$FollowersItemsCopyWith(
          _FollowersItems value, $Res Function(_FollowersItems) then) =
      __$FollowersItemsCopyWithImpl<$Res>;
  @override
  $Res call({int? follower_id, FollowersValues? follower});

  @override
  $FollowersValuesCopyWith<$Res>? get follower;
}

/// @nodoc
class __$FollowersItemsCopyWithImpl<$Res>
    extends _$FollowersItemsCopyWithImpl<$Res>
    implements _$FollowersItemsCopyWith<$Res> {
  __$FollowersItemsCopyWithImpl(
      _FollowersItems _value, $Res Function(_FollowersItems) _then)
      : super(_value, (v) => _then(v as _FollowersItems));

  @override
  _FollowersItems get _value => super._value as _FollowersItems;

  @override
  $Res call({
    Object? follower_id = freezed,
    Object? follower = freezed,
  }) {
    return _then(_FollowersItems(
      follower_id: follower_id == freezed
          ? _value.follower_id
          : follower_id // ignore: cast_nullable_to_non_nullable
              as int?,
      follower: follower == freezed
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as FollowersValues?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowersItems
    with DiagnosticableTreeMixin
    implements _FollowersItems {
  const _$_FollowersItems({this.follower_id, this.follower});

  factory _$_FollowersItems.fromJson(Map<String, dynamic> json) =>
      _$$_FollowersItemsFromJson(json);

  @override
  final int? follower_id;
  @override
  final FollowersValues? follower;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FollowersItems(follower_id: $follower_id, follower: $follower)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FollowersItems'))
      ..add(DiagnosticsProperty('follower_id', follower_id))
      ..add(DiagnosticsProperty('follower', follower));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowersItems &&
            const DeepCollectionEquality()
                .equals(other.follower_id, follower_id) &&
            const DeepCollectionEquality().equals(other.follower, follower));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(follower_id),
      const DeepCollectionEquality().hash(follower));

  @JsonKey(ignore: true)
  @override
  _$FollowersItemsCopyWith<_FollowersItems> get copyWith =>
      __$FollowersItemsCopyWithImpl<_FollowersItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowersItemsToJson(this);
  }
}

abstract class _FollowersItems implements FollowersItems {
  const factory _FollowersItems({int? follower_id, FollowersValues? follower}) =
      _$_FollowersItems;

  factory _FollowersItems.fromJson(Map<String, dynamic> json) =
      _$_FollowersItems.fromJson;

  @override
  int? get follower_id;
  @override
  FollowersValues? get follower;
  @override
  @JsonKey(ignore: true)
  _$FollowersItemsCopyWith<_FollowersItems> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowersValues _$FollowersValuesFromJson(Map<String, dynamic> json) {
  return _FollowersValues.fromJson(json);
}

/// @nodoc
class _$FollowersValuesTearOff {
  const _$FollowersValuesTearOff();

  _FollowersValues call(
      {int? id,
      String? username,
      String? mobile,
      String? first_name,
      String? last_name}) {
    return _FollowersValues(
      id: id,
      username: username,
      mobile: mobile,
      first_name: first_name,
      last_name: last_name,
    );
  }

  FollowersValues fromJson(Map<String, Object?> json) {
    return FollowersValues.fromJson(json);
  }
}

/// @nodoc
const $FollowersValues = _$FollowersValuesTearOff();

/// @nodoc
mixin _$FollowersValues {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowersValuesCopyWith<FollowersValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersValuesCopyWith<$Res> {
  factory $FollowersValuesCopyWith(
          FollowersValues value, $Res Function(FollowersValues) then) =
      _$FollowersValuesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? username,
      String? mobile,
      String? first_name,
      String? last_name});
}

/// @nodoc
class _$FollowersValuesCopyWithImpl<$Res>
    implements $FollowersValuesCopyWith<$Res> {
  _$FollowersValuesCopyWithImpl(this._value, this._then);

  final FollowersValues _value;
  // ignore: unused_field
  final $Res Function(FollowersValues) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? mobile = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FollowersValuesCopyWith<$Res>
    implements $FollowersValuesCopyWith<$Res> {
  factory _$FollowersValuesCopyWith(
          _FollowersValues value, $Res Function(_FollowersValues) then) =
      __$FollowersValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? username,
      String? mobile,
      String? first_name,
      String? last_name});
}

/// @nodoc
class __$FollowersValuesCopyWithImpl<$Res>
    extends _$FollowersValuesCopyWithImpl<$Res>
    implements _$FollowersValuesCopyWith<$Res> {
  __$FollowersValuesCopyWithImpl(
      _FollowersValues _value, $Res Function(_FollowersValues) _then)
      : super(_value, (v) => _then(v as _FollowersValues));

  @override
  _FollowersValues get _value => super._value as _FollowersValues;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? mobile = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
  }) {
    return _then(_FollowersValues(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowersValues
    with DiagnosticableTreeMixin
    implements _FollowersValues {
  const _$_FollowersValues(
      {this.id, this.username, this.mobile, this.first_name, this.last_name});

  factory _$_FollowersValues.fromJson(Map<String, dynamic> json) =>
      _$$_FollowersValuesFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? mobile;
  @override
  final String? first_name;
  @override
  final String? last_name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FollowersValues(id: $id, username: $username, mobile: $mobile, first_name: $first_name, last_name: $last_name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FollowersValues'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('mobile', mobile))
      ..add(DiagnosticsProperty('first_name', first_name))
      ..add(DiagnosticsProperty('last_name', last_name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowersValues &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.mobile, mobile) &&
            const DeepCollectionEquality()
                .equals(other.first_name, first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(mobile),
      const DeepCollectionEquality().hash(first_name),
      const DeepCollectionEquality().hash(last_name));

  @JsonKey(ignore: true)
  @override
  _$FollowersValuesCopyWith<_FollowersValues> get copyWith =>
      __$FollowersValuesCopyWithImpl<_FollowersValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowersValuesToJson(this);
  }
}

abstract class _FollowersValues implements FollowersValues {
  const factory _FollowersValues(
      {int? id,
      String? username,
      String? mobile,
      String? first_name,
      String? last_name}) = _$_FollowersValues;

  factory _FollowersValues.fromJson(Map<String, dynamic> json) =
      _$_FollowersValues.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get mobile;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  @JsonKey(ignore: true)
  _$FollowersValuesCopyWith<_FollowersValues> get copyWith =>
      throw _privateConstructorUsedError;
}
