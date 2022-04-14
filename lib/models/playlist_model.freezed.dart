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

  _Data call({List<Playlists>? playlists}) {
    return _Data(
      playlists: playlists,
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
  List<Playlists>? get playlists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<Playlists>? playlists});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? playlists = freezed,
  }) {
    return _then(_value.copyWith(
      playlists: playlists == freezed
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<Playlists>?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<Playlists>? playlists});
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
    Object? playlists = freezed,
  }) {
    return _then(_Data(
      playlists: playlists == freezed
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<Playlists>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data({this.playlists});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final List<Playlists>? playlists;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(playlists: $playlists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('playlists', playlists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.playlists, playlists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(playlists));

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
  const factory _Data({List<Playlists>? playlists}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Playlists>? get playlists;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

Playlists _$PlaylistsFromJson(Map<String, dynamic> json) {
  return _Playlists.fromJson(json);
}

/// @nodoc
class _$PlaylistsTearOff {
  const _$PlaylistsTearOff();

  _Playlists call(
      {int? id,
      String? title,
      String? description,
      String? created_at,
      List<String>? covers,
      List<EpisodeItems>? episodes,
      List<Tags>? tags}) {
    return _Playlists(
      id: id,
      title: title,
      description: description,
      created_at: created_at,
      covers: covers,
      episodes: episodes,
      tags: tags,
    );
  }

  Playlists fromJson(Map<String, Object?> json) {
    return Playlists.fromJson(json);
  }
}

/// @nodoc
const $Playlists = _$PlaylistsTearOff();

/// @nodoc
mixin _$Playlists {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  List<String>? get covers => throw _privateConstructorUsedError;
  List<EpisodeItems>? get episodes => throw _privateConstructorUsedError;
  List<Tags>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistsCopyWith<Playlists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsCopyWith<$Res> {
  factory $PlaylistsCopyWith(Playlists value, $Res Function(Playlists) then) =
      _$PlaylistsCopyWithImpl<$Res>;
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
class _$PlaylistsCopyWithImpl<$Res> implements $PlaylistsCopyWith<$Res> {
  _$PlaylistsCopyWithImpl(this._value, this._then);

  final Playlists _value;
  // ignore: unused_field
  final $Res Function(Playlists) _then;

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
abstract class _$PlaylistsCopyWith<$Res> implements $PlaylistsCopyWith<$Res> {
  factory _$PlaylistsCopyWith(
          _Playlists value, $Res Function(_Playlists) then) =
      __$PlaylistsCopyWithImpl<$Res>;
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
class __$PlaylistsCopyWithImpl<$Res> extends _$PlaylistsCopyWithImpl<$Res>
    implements _$PlaylistsCopyWith<$Res> {
  __$PlaylistsCopyWithImpl(_Playlists _value, $Res Function(_Playlists) _then)
      : super(_value, (v) => _then(v as _Playlists));

  @override
  _Playlists get _value => super._value as _Playlists;

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
    return _then(_Playlists(
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
class _$_Playlists with DiagnosticableTreeMixin implements _Playlists {
  const _$_Playlists(
      {this.id,
      this.title,
      this.description,
      this.created_at,
      this.covers,
      this.episodes,
      this.tags});

  factory _$_Playlists.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistsFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Playlists(id: $id, title: $title, description: $description, created_at: $created_at, covers: $covers, episodes: $episodes, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Playlists'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('covers', covers))
      ..add(DiagnosticsProperty('episodes', episodes))
      ..add(DiagnosticsProperty('tags', tags));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Playlists &&
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
  _$PlaylistsCopyWith<_Playlists> get copyWith =>
      __$PlaylistsCopyWithImpl<_Playlists>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistsToJson(this);
  }
}

abstract class _Playlists implements Playlists {
  const factory _Playlists(
      {int? id,
      String? title,
      String? description,
      String? created_at,
      List<String>? covers,
      List<EpisodeItems>? episodes,
      List<Tags>? tags}) = _$_Playlists;

  factory _Playlists.fromJson(Map<String, dynamic> json) =
      _$_Playlists.fromJson;

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
  _$PlaylistsCopyWith<_Playlists> get copyWith =>
      throw _privateConstructorUsedError;
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
class _$_EpisodeItems with DiagnosticableTreeMixin implements _EpisodeItems {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeItems(id: $id, name: $name, cover: $cover)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodeItems'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cover', cover));
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
class _$_Tags with DiagnosticableTreeMixin implements _Tags {
  const _$_Tags({this.id, this.title});

  factory _$_Tags.fromJson(Map<String, dynamic> json) => _$$_TagsFromJson(json);

  @override
  final int? id;
  @override
  final String? title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tags(id: $id, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tags'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title));
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
