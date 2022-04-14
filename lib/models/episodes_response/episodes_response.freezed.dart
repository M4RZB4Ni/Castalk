// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episodes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodesModel _$EpisodesModelFromJson(Map<String, dynamic> json) {
  return _EpisodesModel.fromJson(json);
}

/// @nodoc
class _$EpisodesModelTearOff {
  const _$EpisodesModelTearOff();

  _EpisodesModel call({List<Data>? data}) {
    return _EpisodesModel(
      data: data,
    );
  }

  EpisodesModel fromJson(Map<String, Object?> json) {
    return EpisodesModel.fromJson(json);
  }
}

/// @nodoc
const $EpisodesModel = _$EpisodesModelTearOff();

/// @nodoc
mixin _$EpisodesModel {
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesModelCopyWith<EpisodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesModelCopyWith<$Res> {
  factory $EpisodesModelCopyWith(
          EpisodesModel value, $Res Function(EpisodesModel) then) =
      _$EpisodesModelCopyWithImpl<$Res>;
  $Res call({List<Data>? data});
}

/// @nodoc
class _$EpisodesModelCopyWithImpl<$Res>
    implements $EpisodesModelCopyWith<$Res> {
  _$EpisodesModelCopyWithImpl(this._value, this._then);

  final EpisodesModel _value;
  // ignore: unused_field
  final $Res Function(EpisodesModel) _then;

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
abstract class _$EpisodesModelCopyWith<$Res>
    implements $EpisodesModelCopyWith<$Res> {
  factory _$EpisodesModelCopyWith(
          _EpisodesModel value, $Res Function(_EpisodesModel) then) =
      __$EpisodesModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Data>? data});
}

/// @nodoc
class __$EpisodesModelCopyWithImpl<$Res>
    extends _$EpisodesModelCopyWithImpl<$Res>
    implements _$EpisodesModelCopyWith<$Res> {
  __$EpisodesModelCopyWithImpl(
      _EpisodesModel _value, $Res Function(_EpisodesModel) _then)
      : super(_value, (v) => _then(v as _EpisodesModel));

  @override
  _EpisodesModel get _value => super._value as _EpisodesModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_EpisodesModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodesModel extends _EpisodesModel {
  const _$_EpisodesModel({this.data}) : super._();

  factory _$_EpisodesModel.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodesModelFromJson(json);

  @override
  final List<Data>? data;

  @override
  String toString() {
    return 'EpisodesModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EpisodesModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$EpisodesModelCopyWith<_EpisodesModel> get copyWith =>
      __$EpisodesModelCopyWithImpl<_EpisodesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodesModelToJson(this);
  }
}

abstract class _EpisodesModel extends EpisodesModel {
  const factory _EpisodesModel({List<Data>? data}) = _$_EpisodesModel;
  const _EpisodesModel._() : super._();

  factory _EpisodesModel.fromJson(Map<String, dynamic> json) =
      _$_EpisodesModel.fromJson;

  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$EpisodesModelCopyWith<_EpisodesModel> get copyWith =>
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
      String? title,
      String? description,
      String? created_at,
      List<String>? covers,
      List<EpisodeItems>? episodes,
      List<Tags>? tags}) {
    return _Data(
      id: id,
      title: title,
      description: description,
      created_at: created_at,
      covers: covers,
      episodes: episodes,
      tags: tags,
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
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  List<String>? get covers => throw _privateConstructorUsedError;
  List<EpisodeItems>? get episodes => throw _privateConstructorUsedError;
  List<Tags>? get tags => throw _privateConstructorUsedError;

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
      String? title,
      String? description,
      String? created_at,
      List<String>? covers,
      List<EpisodeItems>? episodes,
      List<Tags>? tags});
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
    Object? title = freezed,
    Object? description = freezed,
    Object? created_at = freezed,
    Object? covers = freezed,
    Object? episodes = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      covers: covers == freezed
          ? _value.covers
          : covers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodeItems>?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tags>?,
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
      String? title,
      String? description,
      String? created_at,
      List<String>? covers,
      List<EpisodeItems>? episodes,
      List<Tags>? tags});
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
    Object? title = freezed,
    Object? description = freezed,
    Object? created_at = freezed,
    Object? covers = freezed,
    Object? episodes = freezed,
    Object? tags = freezed,
  }) {
    return _then(_Data(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      covers: covers == freezed
          ? _value.covers
          : covers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodeItems>?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tags>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.id,
      this.title,
      this.description,
      this.created_at,
      this.covers,
      this.episodes,
      this.tags});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? created_at;
  @override
  final List<String>? covers;
  @override
  final List<EpisodeItems>? episodes;
  @override
  final List<Tags>? tags;

  @override
  String toString() {
    return 'Data(id: $id, title: $title, description: $description, created_at: $created_at, covers: $covers, episodes: $episodes, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality().equals(other.covers, covers) &&
            const DeepCollectionEquality().equals(other.episodes, episodes) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(covers),
      const DeepCollectionEquality().hash(episodes),
      const DeepCollectionEquality().hash(tags));

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
      String? title,
      String? description,
      String? created_at,
      List<String>? covers,
      List<EpisodeItems>? episodes,
      List<Tags>? tags}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get created_at;
  @override
  List<String>? get covers;
  @override
  List<EpisodeItems>? get episodes;
  @override
  List<Tags>? get tags;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

EpisodeItems _$EpisodeItemsFromJson(Map<String, dynamic> json) {
  return _EpisodeItems.fromJson(json);
}

/// @nodoc
class _$EpisodeItemsTearOff {
  const _$EpisodeItemsTearOff();

  _EpisodeItems call({int? id, String? name, String? cover}) {
    return _EpisodeItems(
      id: id,
      name: name,
      cover: cover,
    );
  }

  EpisodeItems fromJson(Map<String, Object?> json) {
    return EpisodeItems.fromJson(json);
  }
}

/// @nodoc
const $EpisodeItems = _$EpisodeItemsTearOff();

/// @nodoc
mixin _$EpisodeItems {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeItemsCopyWith<EpisodeItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeItemsCopyWith<$Res> {
  factory $EpisodeItemsCopyWith(
          EpisodeItems value, $Res Function(EpisodeItems) then) =
      _$EpisodeItemsCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? cover});
}

/// @nodoc
class _$EpisodeItemsCopyWithImpl<$Res> implements $EpisodeItemsCopyWith<$Res> {
  _$EpisodeItemsCopyWithImpl(this._value, this._then);

  final EpisodeItems _value;
  // ignore: unused_field
  final $Res Function(EpisodeItems) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cover = freezed,
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
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EpisodeItemsCopyWith<$Res>
    implements $EpisodeItemsCopyWith<$Res> {
  factory _$EpisodeItemsCopyWith(
          _EpisodeItems value, $Res Function(_EpisodeItems) then) =
      __$EpisodeItemsCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? cover});
}

/// @nodoc
class __$EpisodeItemsCopyWithImpl<$Res> extends _$EpisodeItemsCopyWithImpl<$Res>
    implements _$EpisodeItemsCopyWith<$Res> {
  __$EpisodeItemsCopyWithImpl(
      _EpisodeItems _value, $Res Function(_EpisodeItems) _then)
      : super(_value, (v) => _then(v as _EpisodeItems));

  @override
  _EpisodeItems get _value => super._value as _EpisodeItems;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cover = freezed,
  }) {
    return _then(_EpisodeItems(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodeItems implements _EpisodeItems {
  const _$_EpisodeItems({this.id, this.name, this.cover});

  factory _$_EpisodeItems.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeItemsFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? cover;

  @override
  String toString() {
    return 'EpisodeItems(id: $id, name: $name, cover: $cover)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EpisodeItems &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cover, cover));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cover));

  @JsonKey(ignore: true)
  @override
  _$EpisodeItemsCopyWith<_EpisodeItems> get copyWith =>
      __$EpisodeItemsCopyWithImpl<_EpisodeItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeItemsToJson(this);
  }
}

abstract class _EpisodeItems implements EpisodeItems {
  const factory _EpisodeItems({int? id, String? name, String? cover}) =
      _$_EpisodeItems;

  factory _EpisodeItems.fromJson(Map<String, dynamic> json) =
      _$_EpisodeItems.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$EpisodeItemsCopyWith<_EpisodeItems> get copyWith =>
      throw _privateConstructorUsedError;
}

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return _Tags.fromJson(json);
}

/// @nodoc
class _$TagsTearOff {
  const _$TagsTearOff();

  _Tags call({int? id, String? title}) {
    return _Tags(
      id: id,
      title: title,
    );
  }

  Tags fromJson(Map<String, Object?> json) {
    return Tags.fromJson(json);
  }
}

/// @nodoc
const $Tags = _$TagsTearOff();

/// @nodoc
mixin _$Tags {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagsCopyWith<Tags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsCopyWith<$Res> {
  factory $TagsCopyWith(Tags value, $Res Function(Tags) then) =
      _$TagsCopyWithImpl<$Res>;
  $Res call({int? id, String? title});
}

/// @nodoc
class _$TagsCopyWithImpl<$Res> implements $TagsCopyWith<$Res> {
  _$TagsCopyWithImpl(this._value, this._then);

  final Tags _value;
  // ignore: unused_field
  final $Res Function(Tags) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TagsCopyWith<$Res> implements $TagsCopyWith<$Res> {
  factory _$TagsCopyWith(_Tags value, $Res Function(_Tags) then) =
      __$TagsCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? title});
}

/// @nodoc
class __$TagsCopyWithImpl<$Res> extends _$TagsCopyWithImpl<$Res>
    implements _$TagsCopyWith<$Res> {
  __$TagsCopyWithImpl(_Tags _value, $Res Function(_Tags) _then)
      : super(_value, (v) => _then(v as _Tags));

  @override
  _Tags get _value => super._value as _Tags;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_Tags(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tags implements _Tags {
  const _$_Tags({this.id, this.title});

  factory _$_Tags.fromJson(Map<String, dynamic> json) => _$$_TagsFromJson(json);

  @override
  final int? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'Tags(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tags &&
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
  _$TagsCopyWith<_Tags> get copyWith =>
      __$TagsCopyWithImpl<_Tags>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagsToJson(this);
  }
}

abstract class _Tags implements Tags {
  const factory _Tags({int? id, String? title}) = _$_Tags;

  factory _Tags.fromJson(Map<String, dynamic> json) = _$_Tags.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$TagsCopyWith<_Tags> get copyWith => throw _privateConstructorUsedError;
}
