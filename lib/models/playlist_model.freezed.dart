// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayListModel _$PlayListModelFromJson(Map<String, dynamic> json) {
  return _PlayListModel.fromJson(json);
}

/// @nodoc
class _$PlayListModelTearOff {
  const _$PlayListModelTearOff();

  _PlayListModel call({Data? data}) {
    return _PlayListModel(
      data: data,
    );
  }

  PlayListModel fromJson(Map<String, Object?> json) {
    return PlayListModel.fromJson(json);
  }
}

/// @nodoc
const $PlayListModel = _$PlayListModelTearOff();

/// @nodoc
mixin _$PlayListModel {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayListModelCopyWith<PlayListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListModelCopyWith<$Res> {
  factory $PlayListModelCopyWith(
          PlayListModel value, $Res Function(PlayListModel) then) =
      _$PlayListModelCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PlayListModelCopyWithImpl<$Res>
    implements $PlayListModelCopyWith<$Res> {
  _$PlayListModelCopyWithImpl(this._value, this._then);

  final PlayListModel _value;
  // ignore: unused_field
  final $Res Function(PlayListModel) _then;

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
abstract class _$PlayListModelCopyWith<$Res>
    implements $PlayListModelCopyWith<$Res> {
  factory _$PlayListModelCopyWith(
          _PlayListModel value, $Res Function(_PlayListModel) then) =
      __$PlayListModelCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$PlayListModelCopyWithImpl<$Res>
    extends _$PlayListModelCopyWithImpl<$Res>
    implements _$PlayListModelCopyWith<$Res> {
  __$PlayListModelCopyWithImpl(
      _PlayListModel _value, $Res Function(_PlayListModel) _then)
      : super(_value, (v) => _then(v as _PlayListModel));

  @override
  _PlayListModel get _value => super._value as _PlayListModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_PlayListModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayListModel extends _PlayListModel with DiagnosticableTreeMixin {
  const _$_PlayListModel({this.data}) : super._();

  factory _$_PlayListModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayListModelFromJson(json);

  @override
  final Data? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayListModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayListModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayListModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$PlayListModelCopyWith<_PlayListModel> get copyWith =>
      __$PlayListModelCopyWithImpl<_PlayListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayListModelToJson(this);
  }
}

abstract class _PlayListModel extends PlayListModel {
  const factory _PlayListModel({Data? data}) = _$_PlayListModel;
  const _PlayListModel._() : super._();

  factory _PlayListModel.fromJson(Map<String, dynamic> json) =
      _$_PlayListModel.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$PlayListModelCopyWith<_PlayListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call({List<PlayListItems>? data}) {
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
  List<PlayListItems>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<PlayListItems>? data});
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
              as List<PlayListItems>?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<PlayListItems>? data});
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
              as List<PlayListItems>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data({this.data});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final List<PlayListItems>? data;

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
  const factory _Data({List<PlayListItems>? data}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<PlayListItems>? get data;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

PlayListItems _$PlayListItemsFromJson(Map<String, dynamic> json) {
  return _PlayListItems.fromJson(json);
}

/// @nodoc
class _$PlayListItemsTearOff {
  const _$PlayListItemsTearOff();

  _PlayListItems call(
      {int? id, int? user_id, String? title, String? description}) {
    return _PlayListItems(
      id: id,
      user_id: user_id,
      title: title,
      description: description,
    );
  }

  PlayListItems fromJson(Map<String, Object?> json) {
    return PlayListItems.fromJson(json);
  }
}

/// @nodoc
const $PlayListItems = _$PlayListItemsTearOff();

/// @nodoc
mixin _$PlayListItems {
  int? get id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayListItemsCopyWith<PlayListItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListItemsCopyWith<$Res> {
  factory $PlayListItemsCopyWith(
          PlayListItems value, $Res Function(PlayListItems) then) =
      _$PlayListItemsCopyWithImpl<$Res>;
  $Res call({int? id, int? user_id, String? title, String? description});
}

/// @nodoc
class _$PlayListItemsCopyWithImpl<$Res>
    implements $PlayListItemsCopyWith<$Res> {
  _$PlayListItemsCopyWithImpl(this._value, this._then);

  final PlayListItems _value;
  // ignore: unused_field
  final $Res Function(PlayListItems) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PlayListItemsCopyWith<$Res>
    implements $PlayListItemsCopyWith<$Res> {
  factory _$PlayListItemsCopyWith(
          _PlayListItems value, $Res Function(_PlayListItems) then) =
      __$PlayListItemsCopyWithImpl<$Res>;
  @override
  $Res call({int? id, int? user_id, String? title, String? description});
}

/// @nodoc
class __$PlayListItemsCopyWithImpl<$Res>
    extends _$PlayListItemsCopyWithImpl<$Res>
    implements _$PlayListItemsCopyWith<$Res> {
  __$PlayListItemsCopyWithImpl(
      _PlayListItems _value, $Res Function(_PlayListItems) _then)
      : super(_value, (v) => _then(v as _PlayListItems));

  @override
  _PlayListItems get _value => super._value as _PlayListItems;

  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_PlayListItems(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayListItems with DiagnosticableTreeMixin implements _PlayListItems {
  const _$_PlayListItems({this.id, this.user_id, this.title, this.description});

  factory _$_PlayListItems.fromJson(Map<String, dynamic> json) =>
      _$$_PlayListItemsFromJson(json);

  @override
  final int? id;
  @override
  final int? user_id;
  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayListItems(id: $id, user_id: $user_id, title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayListItems'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('user_id', user_id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayListItems &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user_id, user_id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user_id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$PlayListItemsCopyWith<_PlayListItems> get copyWith =>
      __$PlayListItemsCopyWithImpl<_PlayListItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayListItemsToJson(this);
  }
}

abstract class _PlayListItems implements PlayListItems {
  const factory _PlayListItems(
      {int? id,
      int? user_id,
      String? title,
      String? description}) = _$_PlayListItems;

  factory _PlayListItems.fromJson(Map<String, dynamic> json) =
      _$_PlayListItems.fromJson;

  @override
  int? get id;
  @override
  int? get user_id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$PlayListItemsCopyWith<_PlayListItems> get copyWith =>
      throw _privateConstructorUsedError;
}
