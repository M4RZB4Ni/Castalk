// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'liked_entity_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LikedEntityModel _$LikedEntityModelFromJson(Map<String, dynamic> json) {
  return _LikedEntityModel.fromJson(json);
}

/// @nodoc
class _$LikedEntityModelTearOff {
  const _$LikedEntityModelTearOff();

  _LikedEntityModel call({List<Data>? data}) {
    return _LikedEntityModel(
      data: data,
    );
  }

  LikedEntityModel fromJson(Map<String, Object?> json) {
    return LikedEntityModel.fromJson(json);
  }
}

/// @nodoc
const $LikedEntityModel = _$LikedEntityModelTearOff();

/// @nodoc
mixin _$LikedEntityModel {
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikedEntityModelCopyWith<LikedEntityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedEntityModelCopyWith<$Res> {
  factory $LikedEntityModelCopyWith(
          LikedEntityModel value, $Res Function(LikedEntityModel) then) =
      _$LikedEntityModelCopyWithImpl<$Res>;
  $Res call({List<Data>? data});
}

/// @nodoc
class _$LikedEntityModelCopyWithImpl<$Res>
    implements $LikedEntityModelCopyWith<$Res> {
  _$LikedEntityModelCopyWithImpl(this._value, this._then);

  final LikedEntityModel _value;
  // ignore: unused_field
  final $Res Function(LikedEntityModel) _then;

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
abstract class _$LikedEntityModelCopyWith<$Res>
    implements $LikedEntityModelCopyWith<$Res> {
  factory _$LikedEntityModelCopyWith(
          _LikedEntityModel value, $Res Function(_LikedEntityModel) then) =
      __$LikedEntityModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Data>? data});
}

/// @nodoc
class __$LikedEntityModelCopyWithImpl<$Res>
    extends _$LikedEntityModelCopyWithImpl<$Res>
    implements _$LikedEntityModelCopyWith<$Res> {
  __$LikedEntityModelCopyWithImpl(
      _LikedEntityModel _value, $Res Function(_LikedEntityModel) _then)
      : super(_value, (v) => _then(v as _LikedEntityModel));

  @override
  _LikedEntityModel get _value => super._value as _LikedEntityModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_LikedEntityModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LikedEntityModel extends _LikedEntityModel {
  const _$_LikedEntityModel({this.data}) : super._();

  factory _$_LikedEntityModel.fromJson(Map<String, dynamic> json) =>
      _$$_LikedEntityModelFromJson(json);

  @override
  final List<Data>? data;

  @override
  String toString() {
    return 'LikedEntityModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikedEntityModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$LikedEntityModelCopyWith<_LikedEntityModel> get copyWith =>
      __$LikedEntityModelCopyWithImpl<_LikedEntityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikedEntityModelToJson(this);
  }
}

abstract class _LikedEntityModel extends LikedEntityModel {
  const factory _LikedEntityModel({List<Data>? data}) = _$_LikedEntityModel;
  const _LikedEntityModel._() : super._();

  factory _LikedEntityModel.fromJson(Map<String, dynamic> json) =
      _$_LikedEntityModel.fromJson;

  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$LikedEntityModelCopyWith<_LikedEntityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call({List<Item>? item, String? type}) {
    return _Data(
      item: item,
      type: type,
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
  List<Item>? get item => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<Item>? item, String? type});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? item = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<Item>? item, String? type});
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
    Object? item = freezed,
    Object? type = freezed,
  }) {
    return _then(_Data(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({this.item, this.type});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final List<Item>? item;
  @override
  final String? type;

  @override
  String toString() {
    return 'Data(item: $item, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(type));

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
  const factory _Data({List<Item>? item, String? type}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Item>? get item;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {int? id,
      String? name,
      String? description,
      String? created_at,
      String? cover,
      String? episode_time,
      String? crated_at_diff,
      int? likes_count}) {
    return _Item(
      id: id,
      name: name,
      description: description,
      created_at: created_at,
      cover: cover,
      episode_time: episode_time,
      crated_at_diff: crated_at_diff,
      likes_count: likes_count,
    );
  }

  Item fromJson(Map<String, Object?> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get episode_time => throw _privateConstructorUsedError;
  String? get crated_at_diff => throw _privateConstructorUsedError;
  int? get likes_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? created_at,
      String? cover,
      String? episode_time,
      String? crated_at_diff,
      int? likes_count});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? created_at = freezed,
    Object? cover = freezed,
    Object? episode_time = freezed,
    Object? crated_at_diff = freezed,
    Object? likes_count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      episode_time: episode_time == freezed
          ? _value.episode_time
          : episode_time // ignore: cast_nullable_to_non_nullable
              as String?,
      crated_at_diff: crated_at_diff == freezed
          ? _value.crated_at_diff
          : crated_at_diff // ignore: cast_nullable_to_non_nullable
              as String?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? created_at,
      String? cover,
      String? episode_time,
      String? crated_at_diff,
      int? likes_count});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? created_at = freezed,
    Object? cover = freezed,
    Object? episode_time = freezed,
    Object? crated_at_diff = freezed,
    Object? likes_count = freezed,
  }) {
    return _then(_Item(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      episode_time: episode_time == freezed
          ? _value.episode_time
          : episode_time // ignore: cast_nullable_to_non_nullable
              as String?,
      crated_at_diff: crated_at_diff == freezed
          ? _value.crated_at_diff
          : crated_at_diff // ignore: cast_nullable_to_non_nullable
              as String?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item(
      {this.id,
      this.name,
      this.description,
      this.created_at,
      this.cover,
      this.episode_time,
      this.crated_at_diff,
      this.likes_count});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? created_at;
  @override
  final String? cover;
  @override
  final String? episode_time;
  @override
  final String? crated_at_diff;
  @override
  final int? likes_count;

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, created_at: $created_at, cover: $cover, episode_time: $episode_time, crated_at_diff: $crated_at_diff, likes_count: $likes_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Item &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.episode_time, episode_time) &&
            const DeepCollectionEquality()
                .equals(other.crated_at_diff, crated_at_diff) &&
            const DeepCollectionEquality()
                .equals(other.likes_count, likes_count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(episode_time),
      const DeepCollectionEquality().hash(crated_at_diff),
      const DeepCollectionEquality().hash(likes_count));

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {int? id,
      String? name,
      String? description,
      String? created_at,
      String? cover,
      String? episode_time,
      String? crated_at_diff,
      int? likes_count}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get created_at;
  @override
  String? get cover;
  @override
  String? get episode_time;
  @override
  String? get crated_at_diff;
  @override
  int? get likes_count;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}
